package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.Product;

/**
 *
 * @author sarav
 */
public class ProductDao {
    private Connection conn;
    
    public ProductDao() {
        this.conn = new ConnectionDB().getConnectionDB();
    }  
    
    public boolean update(Product product){
        PreparedStatement pst = null;   
        try {                
            String query = "update product set "
                    + "supplierId=?, productCategoryId=?, "
                    + "name=?, description=?, price=? where id=?";
            pst = this.conn.prepareStatement(query);
            pst.setInt(1, product.getSupplierId());
            pst.setInt(2, product.getProductCategoryId());
            pst.setString(3, product.getName());
            pst.setString(4, product.getDescription());
            pst.setDouble(5, product.getPrice());
            pst.setInt(6, product.getId());
                        
            if(pst.executeUpdate() == 1){                
                pst.close();
                return true;
            }                       
        } catch (SQLException e) {
            System.out.println("Error: Clase ProductDao, method:update");
            e.printStackTrace();
        }
        return false;
    }
    
    public boolean insert(Product product) {
        PreparedStatement pst = null;   
        try {                
            String query = "insert into product(supplierId, productCategoryId, "
                    + "name, description, price, isActive) values(?,?,?,?,?,?)";
            pst = this.conn.prepareStatement(query);
            pst.setInt(1, product.getSupplierId());
            pst.setInt(2, product.getProductCategoryId());
            pst.setString(3, product.getName());
            pst.setString(4, product.getDescription());
            pst.setDouble(5, product.getPrice());                        
            pst.setBoolean(6, product.isIsActive());
            if(pst.executeUpdate() == 1){                
                pst.close();
                return true;
            }                       
        } catch (SQLException e) {
            System.out.println("Error: Clase ProductDao, method:insert");
            e.printStackTrace();
        }
        return false;
    }
    


    
}
