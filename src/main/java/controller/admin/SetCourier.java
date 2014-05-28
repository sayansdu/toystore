package controller.admin;

import entity.User;
import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class SetCourier extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        try {
            if(request.getParameter("order_id")!=null){
                String order_id = request.getParameter("order_id");
                UserService service = new UserService();
                List<User> couriers = service.getCouriers();
                if(session.getAttribute("couriers")!=null)
                    session.removeAttribute("couriers");
                if(session.getAttribute("courier_order_id")!=null)
                    session.removeAttribute("courier_order_id");

                session.setAttribute("couriers", couriers);
                session.setAttribute("courier_order_id", Long.parseLong(order_id));
                response.sendRedirect("/Kupon/admin/set_courier.jsp");
                return;
            }
        } catch (Exception e) {
            e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
        }
        response.sendRedirect("/Kupon/admin/cabinet");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
