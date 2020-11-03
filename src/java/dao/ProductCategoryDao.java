package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Product;
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
    
    
    public List<ProductCategory> getProductCategories(){
        List<ProductCategory> productCategories = new ArrayList<ProductCategory>();        
        try {
            String query = "SELECT id, name FROM product_category";
            PreparedStatement pst = this.conn.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                ProductCategory productCategory = new ProductCategory();
                productCategory.setId(rs.getInt("id"));
                productCategory.setName(rs.getString("name"));
                productCategories.add(productCategory);
            }
            return productCategories;
        } catch (SQLException e) {
            System.out.println("1");
            throw new Error("Error: Class ProductCategoryDao. "
                    + "method:getProductCategories" + e.toString());            
        }       
        
    }
    
    public ProductCategory getProductCategoryById(int productCategoryId){        
        try {
            String query = "SELECT id,name FROM product_category where id = ?";
            PreparedStatement pst = this.conn.prepareStatement(query);
            pst.setInt(1, productCategoryId);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                ProductCategory category = new ProductCategory();
                category.setId(rs.getInt("id"));
                category.setName(rs.getString("name"));
                return category;
            }
        } catch (SQLException e) {
           throw new Error("Error: Class ProductCategoryDao. "
                    + "method:getProductCategoryById" + e.toString());      
        }
        
        return null;
    }


    
}
