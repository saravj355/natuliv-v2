package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.User;
/**
 *
 * @author sarav
 */
public class UserDao{
    private Connection conn;
    public UserDao() {
        this.conn = new ConnectionDB().getConnectionDB();
    }  
    
    public boolean update(User user){
        PreparedStatement pst = null;   
        try {                
            String query = "update user set"
                    + " name=?, lastName=?,"
                    + " email=?, passwordHash=?, userRoleId=?"
                    + " where id=?";
            pst = this.conn.prepareStatement(query);
            pst.setString(1, user.getName());
            pst.setString(2, user.getLastName());
            pst.setString(3, user.getEmail());
            pst.setString(4, user.getPasswordHash());
            pst.setInt(5, user.getUserRoleId());
            pst.setInt(6, user.getId());
                        
            if(pst.executeUpdate() == 1){                
                pst.close();
                return true;
            }                       
        } catch (SQLException e) {
            System.out.println("Error: Clase UserDao, method:update");
            e.printStackTrace();
        }
        return false;
    }
    
    public boolean insert(User user) {
        PreparedStatement pst = null;   
        try {                
            String query = "insert into user (name, lastName, "
                    + "email, passwordHash, userRoleId) values(?,?,?,?,?)";
            pst = this.conn.prepareStatement(query);
            pst.setString(1, user.getName());
            pst.setString(2, user.getLastName());
            pst.setString(3, user.getEmail());
            pst.setString(4, user.getPasswordHash());
            pst.setInt(5, user.getUserRoleId());
                        
            if(pst.executeUpdate() == 1){                
                pst.close();
                return true;
            }                       
        } catch (SQLException e) {
            System.out.println("Error: Clase UserDao, method:insert");
            e.printStackTrace();
        }
        return false;
    }
    
}
