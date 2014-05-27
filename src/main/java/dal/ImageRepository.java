package dal;

import connection.SessionFactory;
import entity.K_Image;
import org.apache.ibatis.session.SqlSession;

public class ImageRepository {

    public void setImage(K_Image image){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        try
        {
            session.insert("GoodMapper.saveImage", image);
            session.commit();
        } catch(Exception e){
            e.printStackTrace();
        } finally{
            session.close();
        }
    }

    public K_Image getImage(){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        K_Image image;
        try
        {
            image =  session.selectOne("GoodMapper.getImage");
        } finally{
            session.close();
        }
        return image;
    }

}
