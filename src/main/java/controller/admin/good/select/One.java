package controller.admin.good.select;

import entity.Goods;
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
 * Date: 5/10/14
 * Time: 6:16 PM
 * To change this template use File | Settings | File Templates.
 */
@WebServlet(name = "One")
public class One extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String id_str = request.getParameter("id");
        GoodService service = new GoodService();
        Goods current_good = service.getGoodById(Long.parseLong(id_str));
        if(session.getAttribute("current_good")!=null)
            session.removeAttribute("current_good");
        session.setAttribute("current_good", current_good);
        response.sendRedirect("/Kupon/product_detail.jsp");
    }
}
