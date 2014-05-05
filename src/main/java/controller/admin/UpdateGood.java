package controller.admin;

import entity.Goods;
import service.Service;

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
 * Date: 4/22/14
 * Time: 11:56 AM
 * To change this template use File | Settings | File Templates.
 */
@WebServlet(name = "UpdateGood")
public class UpdateGood extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("update_id");
        Service service;
        try {
            service = new Service();
            Goods good = service.getGoodById(Long.parseLong(id));
            HttpSession session = request.getSession();
            session.setAttribute("updating_object", good);
            session.removeAttribute("update_id");
        } catch (Exception e) {
            e.printStackTrace();
        }
        response.sendRedirect("/Kupon/admin/update.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
