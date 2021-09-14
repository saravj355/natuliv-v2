package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.ProductCategory;

public class ProductCategoryDao {

    private final Connection conn;

    public ProductCategoryDao() {
        this.conn = new ConnectionDB().getConnectionDB();
    }

    public List<ProductCategory> listProductCategories() {
        List<ProductCategory> productCategories = new ArrayList<>();
        try {
            String query = "SELECT * FROM product_category";
            PreparedStatement pst = this.conn.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                ProductCategory productCategory = new ProductCategory();
                productCategory.setId(rs.getInt("id"));
                productCategory.setDisplayName(rs.getString("displayName"));
                productCategory.setKeyName(rs.getString("keyName"));
                productCategories.add(productCategory);
            }
            return productCategories;
        } catch (SQLException e) {
            throw new Error("Error: Clase ProductCategoryDao, method:listProductCategories" + e.toString());
        }

    }

    public ProductCategory getProductCategoryById(int productCategoryId) {
        try {
            String query = "SELECT * FROM product_category where id = ?";
            PreparedStatement pst = this.conn.prepareStatement(query);
            pst.setInt(1, productCategoryId);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                ProductCategory category = new ProductCategory();
                category.setId(rs.getInt("id"));
                category.setKeyName(rs.getString("keyName"));
                category.setDisplayName(rs.getString("displayName"));
                return category;
            }
        } catch (SQLException e) {
             throw new Error("Error: Clase ProductCategoryDao, method:getProductCategoryById" + e.toString());
        }
        return null;
    }

}
