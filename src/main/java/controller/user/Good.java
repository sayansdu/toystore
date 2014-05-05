package controller.user;

import dal.Dal;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created with IntelliJ IDEA.
 * User: sayan
 * Date: 4/23/14
 * Time: 12:33 AM
 * To change this template use File | Settings | File Templates.
 */


public class Good extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        if(session.getAttribute("goods")!=null)
            session.removeAttribute("goods");

        Dal dal = new Dal();

        response.sendRedirect("/Kupon/buyer/good.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
