package dal;

import connection.SessionFactory;
import entity.Category;
import entity.Section;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class CategoryRepository {

    public List<Category> getCategories(){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        List<Category> categories;
        try
        {
            categories =  session.selectList("CategoryMapper.getCategories");
        } finally{
            session.close();
        }
        return categories;
    }

    public List<Section> getSections(){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        List<Section> sections;
        try
        {
            sections =  session.selectList("CategoryMapper.getSection");
        } finally{
            session.close();
        }
        return sections;
    }

    public Category getCategoryById(long id){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        Category category;
        try
        {
            category =  session.selectOne("CategoryMapper.getCategoryById", id);
        } finally{
            session.close();
        }
        return category;
    }

    public Section getSectionById(long id){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        Section section;
        try
        {
            section =  session.selectOne("CategoryMapper.getSectionById", id);
        } finally{
            session.close();
        }
        return section;
    }
}
