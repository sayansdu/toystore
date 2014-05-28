package controller.admin;

import entity.Order;
import entity.User;
import service.OrderService;
import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class SaveCourier extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        try {
            if(request.getParameter("courier_id")!=null){
                String courier_id = request.getParameter("courier_id");
                Long order_id = (Long) session.getAttribute("courier_order_id");

                OrderService orderService = new OrderService();
                UserService userService = new UserService();
                Order order = orderService.getOrder(order_id);
                User courier = userService.getUserById(Long.parseLong(courier_id));
                order.setCourier(courier);

                orderService.setCourierToOrder(order);
                session.removeAttribute("courier_order_id");
                session.removeAttribute("couriers");
                response.sendRedirect("/Kupon/admin/cabinet");
                return;
            }
        } catch (Exception e) {
            e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
        }
        response.sendRedirect("/Kupon/admin/set_courier.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
