package controller.order.before;

import entity.Goods;
import entity.OrderBefore;
import service.GoodService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: sayan
 * Date: 5/13/14
 * Time: 2:09 PM
 * To change this template use File | Settings | File Templates.
 */
@WebServlet(name = "Set")
public class Set extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String good_id_str = request.getParameter("selected_order_good_id").trim();
        String good_count_str = request.getParameter("selected_order_good_count").trim();
        GoodService goodService = new GoodService();
        Goods good = goodService.getGoodById(Long.parseLong(good_id_str));

        if(session.getAttribute("goods_map")==null){
            Map<Integer, OrderBefore> goods_map = new HashMap<Integer, OrderBefore>();
            OrderBefore orderBefore = new OrderBefore();
            orderBefore.setAmount(Integer.parseInt(good_count_str));
            orderBefore.setGoods(good);
            goods_map.put(1 , orderBefore);
            session.setAttribute("goods_map", goods_map);
        }
        else{
            Map<Integer, OrderBefore> goods_map =  (Map<Integer, OrderBefore>) session.getAttribute("goods_map");
            OrderBefore orderBefore = new OrderBefore();
            orderBefore.setAmount(Integer.parseInt(good_count_str));
            orderBefore.setGoods(good);
            goods_map.put(goods_map.size()+1 , orderBefore);
            session.removeAttribute("goods_map");
            session.setAttribute("goods_map", goods_map);
        }
        response.getWriter().print("success");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
