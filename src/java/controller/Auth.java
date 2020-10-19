package controller;

import dao.UserDao;
import model.User;
import utils.PasswordHash;

public class Auth {
    
    public static User login(String email, String password){       
        UserDao userDao = new UserDao();
        User user = userDao.findUserByEmail(email);        
        
        // user not found
        if(user == null){
            return null;
        }        
        
        // check if password is correct
        if(!PasswordHash.compare(password, user.getPasswordHash())){
            return null;
        }        
        
        // user found
        return user;      
    }

   
    
}
