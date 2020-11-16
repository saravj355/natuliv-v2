package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Product;
import model.ProductCategory;
import model.Supplier;

/**
 *
 * @author sarav
 */
public class ProductDao {

    private Connection conn;

    public ProductDao() {
        this.conn = new ConnectionDB().getConnectionDB();
    }

    public boolean update(Product product) {
        PreparedStatement pst = null;
        try {
            String query = "update product set "
                    + "supplierId=?, productCategoryId=?, "
                    + "name=?, description=?, price=?, isActive=?, imagePath=? where id=?";
            pst = this.conn.prepareStatement(query);
            pst.setInt(1, product.getSupplierId());
            pst.setInt(2, product.getProductCategoryId());
            pst.setString(3, product.getName());
            pst.setString(4, product.getDescription());
            pst.setDouble(5, product.getPrice());
            pst.setBoolean(6, product.isActive());
            pst.setString(7, product.getImagePath());
            pst.setInt(8, product.getId());

            if (pst.executeUpdate() == 1) {
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
                    + "name, description, price, isActive, imagePath) values(?,?,?,?,?,?,?)";
            pst = this.conn.prepareStatement(query);
            pst.setInt(1, product.getSupplierId());
            pst.setInt(2, product.getProductCategoryId());
            pst.setString(3, product.getName());
            pst.setString(4, product.getDescription());
            pst.setDouble(5, product.getPrice());
            pst.setBoolean(6, product.isActive());
            pst.setString(7, product.getImagePath());
            if (pst.executeUpdate() == 1) {
                pst.close();
                return true;
            }
        } catch (SQLException e) {
            System.out.println("Error: Clase ProductDao, method:insert");
            e.printStackTrace();
        }
        return false;
    }

    public List<Product> getProducts(int page) {
        
        int MIN_PAGE = 10;
        int MIN_PAGE_TOP = MIN_PAGE - 1;       
        
        int MIN_PRODUCT_ID = page * MIN_PAGE - MIN_PAGE_TOP;
        int MAX_PRODUCT_ID = MIN_PRODUCT_ID + MIN_PAGE_TOP;
        
        
        List<Product> products = new ArrayList<>();
        try {
            String query = "select id, supplierId, productCategoryId,"
                    + " name, description, price, isActive, imagePath "
                    + " from product "
                    + "where id >= ? and id < ?";
            PreparedStatement pst = this.conn.prepareStatement(query);
            pst.setInt(1, MIN_PRODUCT_ID);
            pst.setInt(2, MAX_PRODUCT_ID);
            
            ResultSet rs = pst.executeQuery();

            ProductCategoryDao productCategoryDao = new ProductCategoryDao();
            SupplierDao supplierDao = new SupplierDao();

            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt("id"));
                product.setSupplierId(rs.getInt("supplierId"));
                product.setProductCategoryId(rs.getInt("productCategoryId"));
                product.setName(rs.getString("name"));
                product.setDescription(rs.getString("description"));
                product.setPrice(rs.getDouble("price"));
                product.setIsActive(rs.getBoolean("isActive"));
                product.setImagePath(rs.getString("imagePath"));

                // enrich product category                
                ProductCategory productCategory = productCategoryDao
                        .getProductCategoryById(product.getProductCategoryId());
                product.setProductCategory(productCategory);

                // enrich product brand
                Supplier supplier = supplierDao
                        .getSupplierById(product.getSupplierId());
                product.setSupplier(supplier);
                products.add(product);
            }
            return products;
        } catch (SQLException e) {
            throw new Error("Error: Clase ProductDao, method:getProducts" + e.toString());
        }
    }

    public Product getProductById(int id) {
        try {
            String query = "SELECT * FROM product WHERE id=?";
            PreparedStatement pst = this.conn.prepareStatement(query);
            pst.setInt(1, id);
            ResultSet rs = pst.executeQuery();
            ProductCategoryDao productCategoryDao = new ProductCategoryDao();
            SupplierDao supplierDao = new SupplierDao();

            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt("id"));
                product.setSupplierId(rs.getInt("supplierId"));
                product.setProductCategoryId(rs.getInt("productCategoryId"));
                product.setName(rs.getString("name"));
                product.setDescription(rs.getString("description"));
                product.setPrice(rs.getDouble("price"));
                product.setIsActive(rs.getBoolean("isActive"));
                product.setImagePath(rs.getString("imagePath"));

                // enrich product category                
                ProductCategory productCategory = productCategoryDao
                        .getProductCategoryById(product.getProductCategoryId());
                product.setProductCategory(productCategory);

                // enrich product brand
                Supplier supplier = supplierDao
                        .getSupplierById(product.getSupplierId());
                product.setSupplier(supplier);
                return product;
            }
        } catch (SQLException e) {
            throw new Error(e);
        }
        return null;
    }

}
