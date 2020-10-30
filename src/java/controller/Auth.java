package controller;

import dao.UserDao;
import model.User;
import utils.PasswordHash;

public class Auth {
    
    public static User login(String email, String password){       
        UserDao userDao = new UserDao();
        User user = userDao.findUserByEmail(email);        
                      
        // user not found
        if (user == null){
            return null;
        }        
        
        // check if password is correct
        if (!PasswordHash.compare(password, user.getPasswordHash())){
            return null;
        }        
        
        // user found
        return user;      
    }
    
    public static User register(String name, String lastName, String email, String password, String gender){
        
        // compute password hash
        String passwordHash = PasswordHash.compute(password);
        
        // create user instance
        User user = new User();
        user.setName(name);
        user.setLastName(lastName);
        user.setEmail(email);        
        user.setPasswordHash(passwordHash);
        user.setGender(gender); 
        user.setUserRoleId(2);
        
        // create userDao instance
        UserDao userDao = new UserDao();
        
        boolean insertUser = userDao.insert(user);
                    
        if (!insertUser){
            return null;
        }
        
        return user;
    }
    
    

   
    
}
