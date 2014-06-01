/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.User;
import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author Shere
 */
public class Registration extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int counter=0;
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        String name = request.getParameter("name");
        String telephone = request.getParameter("telephone");
        String password = request.getParameter("password");
        String passwordc = request.getParameter("passwordc");
        String address = request.getParameter("address");
        String email = request.getParameter("email");

        if(name==null || name.isEmpty() || name.length()<2 ){
            counter++;
            session.setAttribute("error-name", "Имя должно содержать минимум 2 символа");
        }
        else{
            session.setAttribute("error-name", null);
        }


        if(telephone==null || telephone.isEmpty() || telephone.length()<2 ){
            counter++;
            session.setAttribute("error-telephone", "Номер не должен быть пустым и содержать цифры");
        }
        else
            session.setAttribute("error-telephone", null);

        if(password==null || password.isEmpty()){
            counter++;
            session.setAttribute("error-pass", "Пароль не должно быть пустым");
        }
        else
            session.setAttribute("error-pass", null);

        if(passwordc==null || !password.equals(passwordc)){
            counter++;
            session.setAttribute("error-repass", "Подтверждение пароля не верное");
        }
        else
            session.setAttribute("error-repass", null);

        if(email == null || !validate(email) || !checkEmail(email)){
            counter++;
            session.setAttribute("error-email", "Email не соответствует требованием");
        }
        else
            session.setAttribute("error-email", null);

        if( counter==0 ){
            try {
                session.removeAttribute("error-name");
                session.removeAttribute("error-telephone");
                session.removeAttribute("error-pass");
                session.removeAttribute("error-repass");
                session.removeAttribute("error-email");

                UserService conn = new UserService();
                User user = conn.saveUser(name, password, email, telephone, address);
                session.setAttribute("current_user", user);
            } catch (Exception e) {
                e.printStackTrace();
            }

            response.sendRedirect("/Kupon/buyer");
        } else {
            response.sendRedirect("/Kupon/login-register.jsp");
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private boolean validate(String email){
        Pattern pattern;
        Matcher matcher;
        String EMAIL_PATTERN =
                "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
                        + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";

        pattern = Pattern.compile(EMAIL_PATTERN);
        matcher = pattern.matcher(email);
        return matcher.matches();
    }

    private boolean checkEmail(String email){
        try {
            UserService userService = new UserService();
            if(userService.checkUserByEmail(email))
                return false;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }
}
