package controller.admin;

import dal.Dal;
import entity.Goods;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: sayan
 * Date: 4/20/14
 * Time: 5:38 AM
 * To change this template use File | Settings | File Templates.
 */
public class AllGoods extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        if(session.getAttribute("goods")!=null)
            session.removeAttribute("goods");

        Dal dal = new Dal();
        List<Goods> goods = dal.getGoods();
        session.setAttribute("goods", goods);
        response.sendRedirect("admin/goods.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
