package dal;

import connection.SessionFactory;
import entity.Goods;
import entity.User;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class UserRepository {

    public User getUserByEmail(String email){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        User user;
        try
        {
            user = (User) session.selectOne("UserMapper.selectUser", email);
        } finally{
            session.close();
        }
        return user;
    }

    public void setUser(User user){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        try
        {
            session.insert("UserMapper.insertUser", user);
            session.commit();
        } catch(Exception e){
            e.printStackTrace();
        } finally{
            session.close();
        }
    }

    public List<Goods> getGoods(){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        List<Goods> goods;
        try
        {
            goods =  session.selectList("UserMapper.selectGoods");
        } finally{
            session.close();
        }
        return goods;
    }

    public Goods getGoodsById(long id){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        Goods goods;
        try
        {
            goods =  session.selectOne("UserMapper.selectGoodsById", id);
        } finally{
            session.close();
        }
        return goods;
    }

    public void setGood(Goods good){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        try
        {
            session.insert("UserMapper.insertGood", good);
            session.commit();
        } catch(Exception e){
            e.printStackTrace();
        } finally{
            session.close();
        }
    }

    public void deleteGood(long good_id){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        try
        {
            session.delete("UserMapper.deleteGood", good_id);
            session.commit();
        } catch(Exception e){
            e.printStackTrace();
        } finally{
            session.close();
        }
    }

    public void updateGood(Goods good){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        try
        {
            session.update("UserMapper.updateGood", good);
            session.commit();
        } catch(Exception e){
            e.printStackTrace();
        } finally{
            session.close();
        }
    }

    public int amountOfBuyers(){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        int count = 0;
        try
        {
            count = session.selectOne("UserMapper.getBuyerAmount");
            session.commit();
        } catch(Exception e){
            e.printStackTrace();
        } finally{
            session.close();
        }
        return count;
    }

    public int singIn(User user){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        int result = 0;
        try
        {
            result = session.selectOne("UserMapper.singIn", user);
            session.commit();
        } catch(Exception e){
            e.printStackTrace();
        } finally{
            session.close();
        }
        return result;
    }

    public void updateUserData(User user){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        try
        {
            session.update("UserMapper.updateUserData", user);
            session.commit();
        } catch(Exception e){
            e.printStackTrace();
        } finally{
            session.close();
        }
    }

    public List<User> getCouriers(){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        List<User> users;
        try
        {
            users =  session.selectList("UserMapper.getCouriers");
        } finally{
            session.close();
        }
        return users;
    }

    public User getUserById(long id){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        User user;
        try
        {
            user = (User) session.selectOne("UserMapper.getUserById", id);
        } finally{
            session.close();
        }
        return user;
    }
}
