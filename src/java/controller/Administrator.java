package controller;

import dao.UserDao;
import model.User;
import utils.PasswordHash;

public class Administrator {
    
    public static User loginAdministrator(String email, String password){       
        UserDao user = new UserDao();
        User adminUser = user.findUserByEmail(email);
        
        if(adminUser == null){
            return null;
        }
        // Admin roelId is '1' 
        if(adminUser.getUserRoleId() != 1){
            return null;
        } 
        
        // check if password is correct
        if (!PasswordHash.compare(password, adminUser.getPasswordHash())){
            return null;
        }  
        
        return adminUser;
    } 
}
