/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.User;
import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Login extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        if((email == null || email.trim().length()==0) || password == null || password.trim().length()==0){
            session.setAttribute("login-error", "Email или пароль неправильно введен");
            response.sendRedirect("/Kupon/login-register.jsp");
            return;
        }
        try {
            UserService conn = new UserService();
            User user = conn.getLogin(email, password);
            if (user!=null) {
                if(session.getAttribute("login-error")!=null)
                    session.removeAttribute("login-error");

                session.setAttribute("current_user", user);
                if(user.getStatus().equals("admin")){
                    response.sendRedirect("/Kupon/admin/cabinet");
                }

                else if(user.getStatus().equals("courier"))
                    response.sendRedirect("/Kupon/courier/cabinet");
                else
                    response.sendRedirect("/Kupon/buyer");

            } else {
                session.setAttribute("login-error", "Email или пароль неправильно введен");
                response.sendRedirect("/Kupon/login-register.jsp");
            }
        } catch (Exception ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public String getServletInfo() {
        return "Short description";
    }
}
