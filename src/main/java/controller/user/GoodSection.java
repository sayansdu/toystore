package controller.user;

import entity.Goods;
import service.GoodService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class GoodSection extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String section_id = null, category_id = null;
        section_id = request.getParameter("section_id");
        category_id = request.getParameter("category_id");
        GoodService service = new GoodService();

        if(section_id!=null){
            List<Goods> goods = service.getGoodsBySection(Long.parseLong(section_id));

            if(session.getAttribute("section_goods")!=null)
                session.removeAttribute("section_goods");
            if(session.getAttribute("category_goods")!=null)
                session.removeAttribute("category_goods");
            session.setAttribute("section_goods", goods);
            response.sendRedirect("/Kupon/products.jsp");
            return;
        } else if(category_id!=null){
            List<Goods> goods = service.getGoodsByCategory(Long.parseLong(category_id));

            if(session.getAttribute("section_goods")!=null)
                session.removeAttribute("section_goods");
            if(session.getAttribute("category_goods")!=null)
                session.removeAttribute("category_goods");
            session.setAttribute("category_goods", goods);
            response.sendRedirect("/Kupon/products.jsp");
            return;
        }
        else
            response.sendRedirect("/Kupon/main");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
