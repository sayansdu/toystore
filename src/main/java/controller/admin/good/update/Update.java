package controller.admin.good.update;

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
 * Date: 4/22/14
 * Time: 11:56 AM
 * To change this template use File | Settings | File Templates.
 */
@WebServlet(name = "Update")
public class Update extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("update_id");
        GoodService service;
        try {
            service = new GoodService();
            Goods good = service.getGoodById(Long.parseLong(id));
            HttpSession session = request.getSession();
            System.out.println(good.getName()+" "+good.getFoto_dir());
            System.out.println(good.getCategory().getId()+" "+good.getSection().getId());
            session.setAttribute("updating_object", good);
            session.removeAttribute("update_id");
        } catch (Exception e) {
            e.printStackTrace();
        }
        response.sendRedirect("/Kupon/admin/edit_product.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
