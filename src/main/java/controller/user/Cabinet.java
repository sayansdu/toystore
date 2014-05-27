package controller.user;

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

/**
 * Created with IntelliJ IDEA.
 * User: sayan
 * Date: 4/23/14
 * Time: 12:33 AM
 * To change this template use File | Settings | File Templates.
 */

public class Cabinet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        if(session.getAttribute("login")!=null)
            session.removeAttribute("login");

        User user = (User) session.getAttribute("current_user");
        if(user!=null){
            OrderService orderService = new OrderService();
            List<Order> orders = orderService.getOrdersByUser(user.getId());

            if(session.getAttribute("user_orders")!=null)
                session.removeAttribute("user_orders");
            session.setAttribute("user_orders", orders);
            response.sendRedirect("/Kupon/cabinet.jsp");
            return;
        }
        else{
            response.sendRedirect("/Kupon/login-register.jsp");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
