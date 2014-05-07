package controller;

import entity.Category;
import entity.Goods;
import entity.Section;
import service.CategoryService;
import service.GoodService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class Index extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        if(session.getAttribute("goods")!=null)
            session.removeAttribute("goods");
        if(session.getAttribute("login")!=null)
            session.removeAttribute("login");

        try {
            GoodService service = new GoodService();
            List<Goods> goods = service.getGoods();
            session.setAttribute("goods", goods);

            CategoryService categoryService = new CategoryService();
            List<Category> categories = categoryService.getCategories();
            session.setAttribute("categories", categories);

            List<Section> sections = categoryService.getSections();
            session.setAttribute("sections", sections);
        } catch (Exception e) {
            e.printStackTrace();
        }

        response.sendRedirect("/Kupon/main.jsp");
    }
}
