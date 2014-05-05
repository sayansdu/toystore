package controller.admin;

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
 * Time: 11:33 AM
 * To change this template use File | Settings | File Templates.
 */
@WebServlet(name = "DeleteGood")
public class DeleteGood extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("delete_id");
        Service service;
        try {
            service = new Service();
            service.deleteGood(Long.parseLong(id));
            HttpSession session = request.getSession();
            session.removeAttribute("delete_id");
        } catch (Exception e) {
            e.printStackTrace();
        }
        response.sendRedirect("/Kupon/admin");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
