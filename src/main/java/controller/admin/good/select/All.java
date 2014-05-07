package controller.admin.good.select;

import entity.Goods;
import service.GoodService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class All extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        if(session.getAttribute("goods")!=null)
            session.removeAttribute("goods");

        try {
            GoodService service = new GoodService();
            List<Goods> goods = service.getGoods();
            session.setAttribute("goods", goods);

        } catch (Exception e) {
            e.printStackTrace();
        }

        response.sendRedirect("/Kupon/admin/products.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
