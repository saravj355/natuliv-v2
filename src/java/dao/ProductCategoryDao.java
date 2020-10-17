package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.ProductCategory;

/**
 *
 * @author sarav
 */
public class ProductCategoryDao {
    private Connection conn;
    
    public ProductCategoryDao() {
        this.conn = new ConnectionDB().getConnectionDB();
    }  
    
    public boolean update(ProductCategory productCategory){
        PreparedStatement pst = null;   
        try {                
            String query = "update product_category set "
                    + "name=? where id=?";
            pst = this.conn.prepareStatement(query);
            pst.setString(1, productCategory.getName());
            pst.setInt(2, productCategory.getId());
                        
            if(pst.executeUpdate() == 1){                
                pst.close();
                return true;
            }                       
        } catch (SQLException e) {
            System.out.println("Error: Clase ProductCategoryDao, method:update");
            e.printStackTrace();
        }
        return false;
    }
    
    public boolean insert(ProductCategory productCategory) {
        PreparedStatement pst = null;   
        try {                
            String query = "insert into product_category(name) values(?)";
            pst = this.conn.prepareStatement(query);
            pst.setString(1, productCategory.getName());
                        
            if(pst.executeUpdate() == 1){                
                pst.close();
                return true;
            }                       
        } catch (SQLException e) {
            System.out.println("Error: Clase ProductCategoryDao, method:insert");
            e.printStackTrace();
        }
        return false;
    }
    


    
}