package controller.order.before;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created with IntelliJ IDEA.
 * User: sayan
 * Date: 5/11/14
 * Time: 1:52 AM
 * To change this template use File | Settings | File Templates.
 */
@WebServlet(name = "Get")
public class Get extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String good_id_str = request.getParameter("selected_order_good_id");
        String good_count_str = request.getParameter("selected_order_good_count");
        System.out.println(good_count_str+" "+good_id_str);
        response.sendRedirect("/Kupon/cart.jsp");
    }
}
