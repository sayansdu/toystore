package controller.courier;

import entity.Order;
import entity.User;
import service.OrderService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class CourierCabinet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User courier = (User) session.getAttribute("current_user");
        OrderService orderService = new OrderService();
        List<Order> orders = orderService.getOrdersByCourier(courier.getId());

        if(session.getAttribute("courier_orders")!=null)
            session.removeAttribute("courier_orders");
        session.setAttribute("courier_orders", orders);
        response.sendRedirect("/Kupon/admin/courier.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
