package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.UserRole;

/**
 *
 * @author sarav
 */
public class UserRoleDao {

    private Connection conn;
    public UserRoleDao() {
        this.conn = new ConnectionDB().getConnectionDB();
    }  
    
    public boolean update(UserRole userRole){
        PreparedStatement pst = null;   
        try {                
            String query = "update user_role set "
                    + "name=?, keyName=? where id=?";
            pst = this.conn.prepareStatement(query);
            pst.setString(1, userRole.getName());
            pst.setString(2, userRole.getKeyName());
            pst.setInt(3, userRole.getId());
                        
            if(pst.executeUpdate() == 1){                
                pst.close();
                return true;
            }                       
        } catch (SQLException e) {
            System.out.println("Error: Clase UserRoleDao, method:update");
            e.printStackTrace();
        }
        return false;
    }
    
    public boolean insert(UserRole userRole) {
        PreparedStatement pst = null;   
        try {                
            String query = "insert into user_role (name, keyName) values(?,?)";
            pst = this.conn.prepareStatement(query);
            pst.setString(1, userRole.getName());
            pst.setString(2, userRole.getKeyName());
                        
            if(pst.executeUpdate() == 1){                
                pst.close();
                return true;
            }                       
        } catch (SQLException e) {
            System.out.println("Error: Clase UserRoleDao, method:insert");
            e.printStackTrace();
        }
        return false;
    }
    
}


