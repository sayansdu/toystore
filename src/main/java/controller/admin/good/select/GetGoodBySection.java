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

public class GetGoodBySection extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String section_id = null, category_id = null;
        section_id = req.getParameter("section_id");
        category_id = req.getParameter("category_id");
        GoodService service = new GoodService();

        if(section_id!=null){
            List<Goods> goods = service.getGoodsBySection(Long.parseLong(section_id));

            if(session.getAttribute("section_goods")!=null)
                session.removeAttribute("section_goods");
            if(session.getAttribute("category_goods")!=null)
                session.removeAttribute("category_goods");
            session.setAttribute("section_goods", goods);
            resp.sendRedirect("/Kupon/admin/sorted_product.jsp");
            return;
        } else if(category_id!=null){
            List<Goods> goods = service.getGoodsByCategory(Long.parseLong(category_id));

            if(session.getAttribute("section_goods")!=null)
                session.removeAttribute("section_goods");
            if(session.getAttribute("category_goods")!=null)
                session.removeAttribute("category_goods");
            session.setAttribute("category_goods", goods);
            resp.sendRedirect("/Kupon/admin/sorted_product.jsp");
            return;
        }
        else
            resp.sendRedirect("/Kupon/admin/goods/all");
    }
}
