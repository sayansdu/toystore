package dal;

import connection.SessionFactory;
import entity.Goods;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class GoodRepository {

    public GoodRepository(){
     //   Locale.setDefault(new Locale("en", "US"));
    }

    public List<Goods> getGoods(){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        List<Goods> goods;
        try
        {
            goods =  session.selectList("GoodMapper.selectGoods");
        } finally{
            session.close();
        }
        return goods;
    }

    public List<Goods> getGoodsBySection(long section_id){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        List<Goods> goods;
        try
        {
            goods =  session.selectList("GoodMapper.getGoodsBySection", section_id);
        } finally{
            session.close();
        }
        return goods;
    }

    public List<Goods> getGoodsByCategory(long category_id){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        List<Goods> goods;
        try
        {
            goods =  session.selectList("GoodMapper.getGoodsByCategory", category_id);
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
            goods =  session.selectOne("GoodMapper.selectGoodsById", id);
        } finally{
            session.close();
        }
        return goods;
    }

    public void setGood(Goods good){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        try
        {
            session.insert("GoodMapper.insertGood", good);
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
            session.delete("GoodMapper.deleteGood", good_id);
            session.commit();
        } catch(Exception e){
            e.printStackTrace();
        } finally{
            session.close();
        }
    }

    public void deleteOrderGood(long good_id){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        try
        {
            session.delete("GoodMapper.deleteOrderGood", good_id);
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
            session.update("GoodMapper.updateGood", good);
            session.commit();
        } catch(Exception e){
            e.printStackTrace();
        } finally{
            session.close();
        }
    }


}
