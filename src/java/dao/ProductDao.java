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

    public boolean delete(int id) {
        PreparedStatement pst = null;
        try {
            String query = "delete from product where id=?";
            pst = this.conn.prepareStatement(query);
            pst.setInt(1, id);

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

    public List<Product> searchProduct(String search) {
        List<Product> products = new ArrayList<Product>();
        try {
            String query = "select * from product WHERE name like '%" + search + "%' "
                    + "or price like '%" + search + "%'";
            PreparedStatement pst = this.conn.prepareStatement(query);

            ResultSet rs = pst.executeQuery();

            ProductCategoryDao productCategoryDao = new ProductCategoryDao();
            SupplierDao supplierDao = new SupplierDao();

            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt("id"));
                product.setImagePath(rs.getString("imagePath"));
                product.setName(rs.getString("name"));
                product.setDescription(rs.getString("description"));
                product.setProductCategoryId(rs.getInt("productCategoryId"));
                product.setPrice(rs.getDouble("price"));
                product.setSupplierId(rs.getInt("supplierId"));
                product.setIsActive(rs.getBoolean("isActive"));

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
            System.out.println("Error: Clase UserDao, method:getUsers");
            e.printStackTrace();
        }
        return products;
    }

    public List<Product> getProducts() {

        List<Product> products = new ArrayList<>();
        try {
            String query = "select id, supplierId, productCategoryId,"
                    + " name, description, price, isActive, imagePath "
                    + " from product";
            PreparedStatement pst = this.conn.prepareStatement(query);

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

    public List<Product> getProductsByCategoryId(int categoryId) {

        List<Product> products = new ArrayList<>();
        try {
            String query = "select * from product where productCategoryId=?";
            PreparedStatement pst = this.conn.prepareStatement(query);
            pst.setInt(1, categoryId);

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
            throw new Error("Error: Clase ProductDao, method:getProductsByCategoryId" + e.toString());
        }
    }
}
