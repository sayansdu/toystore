package dal;

import connection.SessionFactory;
import entity.Order;
import entity.OrderBefore;
import org.apache.ibatis.session.SqlSession;

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
        Order order = new Order();
        try
        {
            order = session.selectOne("OrderMapper.getOrderById");
            session.commit();
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
}
