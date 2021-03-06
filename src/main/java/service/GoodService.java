package service;

import dal.GoodRepository;
import entity.Goods;

import java.util.List;

public class GoodService {

    GoodRepository dal;
    CategoryService categoryService;

    public GoodService(){
        dal = new GoodRepository();
        categoryService = new CategoryService();
    }

    public List<Goods> getGoods(){
        return dal.getGoods();
    }

    public List<Goods> getGoodsBySection(long section_id){
        return dal.getGoodsBySection(section_id);
    }

    public List<Goods> getGoodsByCategory(long category_id){
        return dal.getGoodsByCategory(category_id);
    }

    public void saveGood(String name, String description, int price, long category, long section, String photoDir, String producer, String color, String size, byte[] image) throws Exception {
        Goods good = new Goods();
        good.setName(name);
        good.setDescription(description);
        good.setPrice(price);
        good.setCategory(categoryService.getCategoryById(category));
        good.setSection(categoryService.getSectionById(section));
        good.setFoto_dir(photoDir);
        good.setProducer(producer);
        good.setColor(color);
        good.setVolume(size);
        good.setImage(image);
        dal.setGood(good);
    }

    public void deleteGood(long id) throws Exception {
        dal.deleteOrderGood(id);
        dal.deleteGood(id);
    }

    public Goods getGoodById(long id){
        return dal.getGoodsById(id);
    }

    public void updateGood(long id, String name, String description, int price, long category, long section, String photoDir, String producer, String color, String size, byte[] image) throws Exception {
        Goods good = new Goods();
        good.setId(id);
        good.setName(name);
        good.setDescription(description);
        good.setPrice(price);
        good.setCategory(categoryService.getCategoryById(category));
        good.setSection(categoryService.getSectionById(section));
        good.setFoto_dir(photoDir);
        good.setProducer(producer);
        good.setColor(color);
        good.setVolume(size);
        good.setImage(image);
        dal.updateGood(good);
    }

}
