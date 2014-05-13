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
import java.util.*;

/**
 * Created with IntelliJ IDEA.
 * User: sayan
 * Date: 5/11/14
 * Time: 1:52 AM
 * To change this template use File | Settings | File Templates.
 */
@WebServlet(name = "Get")
public class Get extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Map<Integer, OrderBefore> goods_map = new HashMap<Integer, OrderBefore>();

        if(request.getParameter("selected_order_good_id")!=null && request.getParameter("selected_order_good_count")!=null){
            String good_id_str = request.getParameter("selected_order_good_id").trim();
            String good_count_str = request.getParameter("selected_order_good_count").trim();

            GoodService goodService = new GoodService();
            Goods good = goodService.getGoodById(Long.parseLong(good_id_str));

            OrderBefore orderBefore = new OrderBefore();
            orderBefore.setAmount(Integer.parseInt(good_count_str));
            orderBefore.setGoods(good);

            if(session.getAttribute("goods_map")==null){
                goods_map.put(1, orderBefore);
            }
            else{
                goods_map = (Map<Integer, OrderBefore>) session.getAttribute("goods_map");
                goods_map.put(goods_map.size()+1, orderBefore);
                session.removeAttribute("goods_map");

                java.util.Set<Integer> keys =  goods_map.keySet();
                for (Integer key : keys) {
                    System.out.println("keys "+goods_map.get(key).getGoods().getName()+" "+goods_map.get(key).getAmount());
                }
            }
        } else {
            if(session.getAttribute("goods_map")!=null){
                goods_map = (Map<Integer, OrderBefore>) session.getAttribute("goods_map");
                session.removeAttribute("goods_map");
            }
        }
        session.setAttribute("goods_map", goods_map);
        response.sendRedirect("/Kupon/cart.jsp");
    }
}
