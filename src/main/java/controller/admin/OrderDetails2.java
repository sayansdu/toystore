package controller.admin;

import entity.OrderBefore;
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
 * Date: 5/25/14
 * Time: 9:14 PM
 * To change this template use File | Settings | File Templates.
 */
public class OrderDetails2 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        if(request.getParameter("order_id")!=null){
            String order_id = request.getParameter("order_id");
            OrderService service = new OrderService();
            List<OrderBefore> orderBefore = service.getOrderDetails(Long.parseLong(order_id));

            if(session.getAttribute("order_details")!=null){
                session.removeAttribute("order_details");
            }
            session.setAttribute("order_details", orderBefore);
            response.sendRedirect("/Kupon/admin/order_details.jsp");
            return;
        }

        response.sendRedirect("/Kupon/admin/index.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
