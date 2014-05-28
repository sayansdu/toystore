package dal;

import connection.SessionFactory;
import entity.Order;
import entity.OrderBefore;
import org.apache.ibatis.session.SqlSession;

import java.util.ArrayList;
import java.util.List;

public class OrderRepository {

    public void saveOrder(Order order){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        try
        {
            session.insert("OrderMapper.insert_order", order);
            session.commit();
        } catch(Exception e){
            e.printStackTrace();
        } finally{
            session.close();
        }
    }

    public Order getLastOrder(){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        Order order = new Order();
        try
        {
            order = session.selectOne("OrderMapper.lastOrderId");
        } catch(Exception e){
            e.printStackTrace();
        } finally{
            session.close();
        }
        return order;
    }

    public Order getOrderById(long id){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        Order order = null;
        try
        {
            order = session.selectOne("OrderMapper.getOrderById", id);
        } catch(Exception e){
            e.printStackTrace();
        } finally{
            session.close();
        }
        return order;
    }

    public Order getOrderForSign(long order_id){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        Order order = null;
        try
        {
            order = session.selectOne("OrderMapper.getOrderForSign", order_id);
        } catch(Exception e){
            e.printStackTrace();
        } finally{
            session.close();
        }
        return order;
    }

    public void saveOrderBefore(OrderBefore orderBefore){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        try
        {
            session.insert("OrderMapper.insert_order_good", orderBefore);
            session.commit();
        } catch(Exception e){
            e.printStackTrace();
        } finally{
            session.close();
        }
    }

    public List<Order> getOrdersByUser(long user_id){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        List<Order> orderBefores = new ArrayList<Order>();
        try
        {
            orderBefores = session.selectList("OrderMapper.getOrdersByUser", user_id);
        } catch(Exception e){
            e.printStackTrace();
        } finally{
            session.close();
        }
        return orderBefores;
    }

    public List<Order> getOrders(){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        List<Order> orders = new ArrayList<Order>();
        try
        {
            orders = session.selectList("OrderMapper.getOrders");
        } catch(Exception e){
            e.printStackTrace();
        } finally{
            session.close();
        }
        return orders;
    }

    public List<OrderBefore> getOrderDetails(long order_id){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        List<OrderBefore> orderBefores = new ArrayList<OrderBefore>();
        try
        {
            orderBefores =  session.selectList("OrderMapper.getOrderBefore", order_id);
        } finally{
            session.close();
        }
        return orderBefores;
    }

    public void setCourierToOrder(Order order){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        try
        {
            session.update("OrderMapper.setCourierToOrder", order);
            session.commit();
        } catch(Exception e){
            e.printStackTrace();
        } finally{
            session.close();
        }
    }

    public void setOrderDelivered(Order order){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        try
        {
            session.update("OrderMapper.setOrderDelivered", order);
            session.commit();
        } catch(Exception e){
            e.printStackTrace();
        } finally{
            session.close();
        }
    }

    public List<Order> getOrdersByCourier(long courier_id){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        List<Order> order = new ArrayList<Order>();
        try
        {
            order = session.selectList("OrderMapper.getOrdersByCourier", courier_id);
        } catch(Exception e){
            e.printStackTrace();
        } finally{
            session.close();
        }
        return order;
    }
}
