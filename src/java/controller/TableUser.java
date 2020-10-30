package controller;

import dao.UserDao;
import java.util.List;
import model.User;

public class TableUser {

    public TableUser() {
    }

    public List<User> listUser() {
        return FindUserList();
    }

    private List<User> FindUserList() {
        User user = new User();
        
        UserDao getUsersList = new UserDao();
        
        getUsersList.getUsers();
         
        return user;
    }
}
