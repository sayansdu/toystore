package service;

import dal.CategoryRepository;
import entity.Category;
import entity.Section;

import java.util.List;

public class CategoryService {

    private CategoryRepository dao;

    public CategoryService(){
        dao = new CategoryRepository();
    }

    public List<Category> getCategories(){
        return dao.getCategories();
    }

    public List<Section> getSections(){
        return dao.getSections();
    }

    public Category getCategoryById(long id){
        return dao.getCategoryById(id);
    }

    public Section getSectionById(long id){
        return dao.getSectionById(id);
    }

}
