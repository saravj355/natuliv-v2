package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.UserProductRecomendation;

/**
 *
 * @author sarav
 */
public class UserProductRecomendationDao {
    private Connection conn;
    
    public UserProductRecomendationDao() {
        this.conn = new ConnectionDB().getConnectionDB();
    }  
    
    public boolean update(UserProductRecomendation userProductRecomendation){
        PreparedStatement pst = null;   
        try {                
            String query = "update user_product_recomendation set "
                    + "productId=?, userId=? where id=?";
            pst = this.conn.prepareStatement(query);
            pst.setInt(1, userProductRecomendation.getProductId());
            pst.setInt(2, userProductRecomendation.getUserId());
            pst.setInt(3, userProductRecomendation.getId());
                        
            if(pst.executeUpdate() == 1){                
                pst.close();
                return true;
            }                       
        } catch (SQLException e) {
            System.out.println("Error: Clase UserProductRecomendationDao, method:update");
            e.printStackTrace();
        }
        return false;
    }
    
    public boolean insert(UserProductRecomendation userProductRecomendation) {
        PreparedStatement pst = null;   
        try {                
            String query = "insert into user (productId, userId) values(?,?)";
            pst = this.conn.prepareStatement(query);
            pst.setInt(1, userProductRecomendation.getProductId());
            pst.setInt(2, userProductRecomendation.getUserId());
                        
            if(pst.executeUpdate() == 1){                
                pst.close();
                return true;
            }                       
        } catch (SQLException e) {
            System.out.println("Error: Clase UserProductRecomendationDao, method:insert");
            e.printStackTrace();
        }
        return false;
    }
    

}
