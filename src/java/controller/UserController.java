package controller;

import dao.UserDao;
import java.util.List;
import model.User;

public class UserController {

    public UserController() {
    }
    
    public List<User> findUsers() {        
        UserDao getUsersList = new UserDao();        
        return getUsersList.getUsers();
    }
}
