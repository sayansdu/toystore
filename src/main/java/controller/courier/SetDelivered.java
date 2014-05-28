package controller.courier;

import entity.Order;
import service.OrderService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class SetDelivered extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String paid = request.getParameter("paid");
        String delivered = request.getParameter("delivered");
        String order_id = request.getParameter("order_id");
        if(delivered!=null && order_id!=null){
            System.out.println(paid);
            System.out.println(delivered);
            System.out.println(order_id);

            OrderService orderService = new OrderService();
            Order order = orderService.getOrder(Long.parseLong(order_id));
            if(paid!=null && paid.equals("on"))
                order.setPaid(1);
            order.setDelivered(Integer.parseInt(delivered));

            orderService.setOrderDelivered(order);
            response.sendRedirect("/Kupon/courier/cabinet");
            return;
        }
        response.sendRedirect("/Kupon/admin/courier.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
