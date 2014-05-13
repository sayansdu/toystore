package controller.order.after;

import entity.Goods;
import entity.Order;
import entity.OrderBefore;
import entity.User;
import service.OrderService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Map;

public class Save extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Goods order_good = (Goods) session.getAttribute("order_before_object");
        Integer count = (Integer) session.getAttribute("order_before_count");
        User current_user = (User) session.getAttribute("current_user");
        try{
            Order order = new Order();
            order.setBuyer(current_user);
            order.setPaid(0);
            OrderService orderService = new OrderService();
            orderService.saveOrder(order);

            Order lastOrder = orderService.getLastOrder();
            Map<Integer, OrderBefore> goods_map =  (Map<Integer, OrderBefore>) session.getAttribute("goods_map");
            java.util.Set<Integer> keys =  goods_map.keySet();
            for (Integer key : keys) {
                OrderBefore orderBefore = goods_map.get(key);
                orderBefore.setOrder(lastOrder);
                orderService.saveOrderBefore(orderBefore);
                goods_map.remove(key);
            }
            session.removeAttribute("goods_map");
            session.setAttribute("goods_map", goods_map);


        } catch( Exception e){
            e.printStackTrace();
        }
        response.sendRedirect("/Kupon/delivery.jsp");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
