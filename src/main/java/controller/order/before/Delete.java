package controller.order.before;

import entity.Goods;
import entity.OrderBefore;
import service.GoodService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Map;

public class Delete extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("selected_order_delete_id");
        HttpSession session = request.getSession();
        Map<Integer, OrderBefore> goods_map =  (Map<Integer, OrderBefore>) session.getAttribute("goods_map");
        GoodService goodService = new GoodService();

        Goods good = goodService.getGoodById(Long.parseLong(id));
        goods_map.remove(Integer.parseInt(id));

        session.removeAttribute("goods_map");
        session.setAttribute("goods_map", goods_map);
        response.sendRedirect("/Kupon/order/before/get");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
