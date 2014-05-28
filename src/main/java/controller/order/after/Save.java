package controller.order.after;

import entity.Order;
import entity.OrderBefore;
import entity.User;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import service.OrderService;
import service.UserService;
import util.GenSign;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class Save extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        User current_user = (User) session.getAttribute("current_user");
        if(current_user==null){
            response.sendRedirect("/Kupon/Login");
            return;
        }

        try{
            List<FileItem> multiparts = new ServletFileUpload(
                    new DiskFileItemFactory()).parseRequest(request);
            String phone = "", address= "", delivery_type="", payment_type = "";
            byte[] pk  = new byte[0];
            byte[] signMess  = new byte[0];

            for(FileItem item : multiparts){
                if(!item.isFormField() && item.getSize()!=0){
                    pk = item.get();
                }else{
                    if(item.getFieldName().equals("phone")){
                        phone = new String(item.getString().getBytes("iso-8859-1"), "UTF-8");
                    }
                    else if(item.getFieldName().equals("address")){
                        address = new String(item.getString().getBytes("iso-8859-1"), "UTF-8");
                    }
                    else if(item.getFieldName().equals("delivery_type")){
                        delivery_type = new String(item.getString().getBytes("iso-8859-1"), "UTF-8");
                    }
                    else if(item.getFieldName().equals("payment_type")){
                        payment_type = new String(item.getString().getBytes("iso-8859-1"), "UTF-8");
                    }
                }
            }

            int count = 0;
            if(phone==null || phone.trim().length()==0){
                session.setAttribute("phone_error", "Нужно указать телефон");
                count++;
            } else {
                session.setAttribute("phone_error", null);
            }
            if(address==null || address.trim().length()==0){
                session.setAttribute("address_error", "Нужно указать адрес");
                count++;
            } else {
                session.setAttribute("address_error", null);
            }
            if(pk.length==0){
                session.setAttribute("store_error", "Нужно указать файл хранилище");
                count++;
            } else {
                session.setAttribute("store_error", null);
            }

            if(count!=0){
                response.sendRedirect("/Kupon/payment.jsp");
                return;
            } else{
                byte[] input = (phone+" "+address).getBytes();

                GenSign sign = new GenSign();
                sign.init(pk);

                signMess = sign.getSignMess(input);
                pk = sign.getPublicKey();

                current_user.setAddress(address);
                current_user.setTelephone(phone);
                UserService userService = new UserService();
                userService.updateUserData(current_user);
            }

            Order order = new Order();
            order.setBuyer(current_user);
            if(payment_type.equals("cash")) order.setPaid(0);
            else                            order.setPaid(1);
            order.setPayment_type(payment_type);
            order.setDelivery(delivery_type);
            order.setSign_text(signMess);
            order.setPublic_key(pk);
            OrderService orderService = new OrderService();
            orderService.saveOrder(order);

            Order lastOrder = orderService.getLastOrder();
            Map<Integer, OrderBefore> goods_map =  (Map<Integer, OrderBefore>) session.getAttribute("goods_map");
            Set<Integer> keys =  goods_map.keySet();
            for (Integer key : keys) {
                OrderBefore orderBefore = goods_map.get(key);
                orderBefore.setOrder(lastOrder);
                orderService.saveOrderBefore(orderBefore);
            }
            session.removeAttribute("goods_map");
            session.removeAttribute("payment_type");
            session.removeAttribute("delivery_type");

        }catch (Exception e){
            e.printStackTrace();
        }

        response.sendRedirect("/Kupon/delivery.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
