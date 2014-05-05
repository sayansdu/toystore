/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import dal.Dal;
import entity.Goods;
import entity.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Shere
 */
public class Service {

    private Dal dal;

    public static boolean signIn = false;
    Connection conn = null;
    Statement stmt = null;
    List<String> list = new ArrayList<String>();


    public Service() throws Exception {
        dal = new Dal();
        Class.forName("oracle.jdbc.driver.OracleDriver");
        conn = DriverManager.getConnection("jdbc:oracle:thin:@sayan-PC:1521:orcl", "master", "changeit");
        stmt = conn.createStatement();
    }

    public User getLogin(String email, String password) throws SQLException {
//        int count = dal.amountOfBuyers();
//        System.out.println("buyers count: "+count);
        int count = 0;
        User user = new User();
        user.setEmail(email);
        user.setPassword(password);
        count = dal.singIn(user);

        if(count == 1){
            signIn = true;
            user = dal.getUserByEmail(email);
            return user;
        }

        return null;
    }
    public User saveUser(String name, String surname, String password, String email) throws Exception {
        User user = new User();
        user.setName(name);
        user.setSurname(surname);
        user.setEmail(email);
        user.setPassword((password));
        user.setStatus("buyer");
        dal.setUser(user);
        return user;
    }

    public void saveGood(String name, String description, String category, int price, int amount, String photoDir) throws Exception {
        Goods good = new Goods();
        good.setName(name);
        good.setDescription(description);
        good.setCategory(category);
        good.setPrice(price);
        good.setAmount(amount);
        good.setPhotoDirectory(photoDir);
        dal.setGood(good);
    }

    public void deleteGood(long id) throws Exception {
        dal.deleteGood(id);
    }

    public Goods getGoodById(long id){
        return dal.getGoodsById(id);
    }

    public void updateGood(long id, String name, String description, String category, int price, int amount) throws Exception {
        Goods good = new Goods();
        good.setId(id);
        good.setName(name);
        good.setDescription(description);
        good.setCategory(category);
        good.setPrice(price);
        good.setAmount(amount);
        dal.updateGood(good);
    }

}