package controller.admin;

import service.GoodService;

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
 * Time: 12:22 PM
 * To change this template use File | Settings | File Templates.
 */
@WebServlet(name = "SaveUpdatedGood")
public class SaveUpdatedGood extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = new String(request.getParameter("name").getBytes("iso-8859-1"), "UTF-8"),
                description = new String(request.getParameter("description").getBytes("iso-8859-1"), "UTF-8"),
                category = new String(request.getParameter("category").getBytes("iso-8859-1"), "UTF-8"),
                price_str = request.getParameter("price"),
                amount_str = request.getParameter("amount"),
                id_str = request.getParameter("id");

        int count = 0;
        HttpSession session = request.getSession();

        if(name==null || name.trim().isEmpty()){
            session.setAttribute("error-name", "Название товара не должно быть пустым");
            count++;
        }

        if(category==null || category.trim().isEmpty()){
            session.setAttribute("error-category", "Категория товара не должно быть пустым");
            count++;
        }

        if(!isNumber(price_str)){
            session.setAttribute("error-price", "Цена должна содержать только цифры");
            count++;
        }
        if(!isNumber(amount_str)){
            session.setAttribute("error-amount", "Количество должна содержать только цифры");
            count++;
        }

        if(count > 0){
            response.sendRedirect("/Kupon/admin/update.jsp");
            return;
        }

        int price = Integer.parseInt(price_str),
            amount = Integer.parseInt(amount_str);
        long id = Long.parseLong(id_str);

        System.out.println(name+" "+description+" "+category);
        GoodService service;
        try {
            service = new GoodService();
            service.updateGood(id, name, description, category, price, amount);
            session.removeAttribute("updating_object");
        } catch (Exception e) {
            e.printStackTrace();
        }
        response.sendRedirect("/Kupon/admin");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    public boolean isNumber(String number){
        if(number==null || number.isEmpty())
            return false;
        try{
            Integer.parseInt(number);
        }catch (NumberFormatException e){
            return false;
        }
        return true;
    }
}
