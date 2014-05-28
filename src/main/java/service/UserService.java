/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import dal.UserRepository;
import entity.User;

import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Shere
 */
public class UserService {

    private UserRepository dal;

    public static boolean signIn = false;

    public UserService() throws Exception {
        dal = new UserRepository();
    }

    public User getLogin(String email, String password) throws SQLException {
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
    public User saveUser(String name, String password, String email, String telephone, String address) throws Exception {
        User user = new User();
        user.setName(name);
        user.setTelephone(telephone);
        user.setEmail(email);
        user.setPassword((password));
        user.setAddress(address);

        dal.setUser(user);
        return user;
    }

    public void updateUserData(User user){
        dal.updateUserData(user);
    }

    public List<User> getCouriers(){
        return dal.getCouriers();
    }

    public User getUserById(long id){
        return dal.getUserById(id);
    }
}