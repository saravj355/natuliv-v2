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

public class ProductDao {

    private final Connection conn;

    public ProductDao() {
        this.conn = new ConnectionDB().getConnectionDB();
    }

    public boolean updateProduct(Product product) {
        try {
            String query = "UPDATE product SET "
                    + "productCategoryId=?, "
                    + "name=?, description=?, price=?, isActive=?, imagePath=? WHERE id=?";
            PreparedStatement pst = this.conn.prepareStatement(query);
            pst.setInt(1, product.getProductCategoryId());
            pst.setString(2, product.getName());
            pst.setString(3, product.getDescription());
            pst.setInt(4, product.getPrice());
            pst.setBoolean(5, product.isActive());
            pst.setString(6, product.getImagePath());
            pst.setInt(7, product.getId());

            if (pst.executeUpdate() == 1) {
                pst.close();
                return true;
            }

        } catch (SQLException e) {
            throw new Error("Error: Clase ProductDao, method:updateProduct" + e.toString());
        }
        return false;
    }

    public boolean insertProduct(Product product) {
        try {
            String query = "INSERT INTO product(supplierId, productCategoryId, "
                    + "name, description, price, isActive, imagePath) values(?,?,?,?,?,?,?)";
            PreparedStatement pst = this.conn.prepareStatement(query);
            pst.setInt(1, product.getSupplierId());
            pst.setInt(2, product.getProductCategoryId());
            pst.setString(3, product.getName());
            pst.setString(4, product.getDescription());
            pst.setInt(5, product.getPrice());
            pst.setBoolean(6, product.isActive());
            pst.setString(7, product.getImagePath());

            if (pst.executeUpdate() == 1) {
                pst.close();
                return true;
            }

        } catch (SQLException e) {
            throw new Error("Error: Clase ProductDao, method:insertProduct" + e.toString());
        }
        return false;
    }

    public boolean deleteProductById(int id) {
        try {
            String query = "DELETE FROM product WHERE id=?";
            PreparedStatement pst = this.conn.prepareStatement(query);
            pst.setInt(1, id);

            if (pst.executeUpdate() == 1) {
                pst.close();
                return true;
            }

        } catch (SQLException e) {
            throw new Error("Error: Clase ProductDao, method:deleteProductById" + e.toString());
        }
        return false;
    }

    public boolean deleteProductBySupplierId(int supplierId) {
        try {
            String query = "DELETE FROM product WHERE supplierId=?";
            PreparedStatement pst = this.conn.prepareStatement(query);
            pst.setInt(1, supplierId);

            if (pst.executeUpdate() == 1) {
                pst.close();
                return true;
            }

        } catch (SQLException e) {
            throw new Error("Error: Clase ProductDao, method:deleteProductBySupplierId" + e.toString());
        }
        return false;
    }

    public List<Product> searchProduct(String search) {
        List<Product> products = new ArrayList<>();
        try {
            String query = "SELECT * FROM product WHERE name LIKE '%" + search + "%' "
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
                product.setPrice(rs.getInt("price"));
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
            throw new Error("Error: Clase ProductDao, method:searchProduct" + e.toString());
        }
    }

    public List<Product> listProducts() {

        List<Product> products = new ArrayList<>();
        try {
            String query = "SELECT * FROM product";
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
                product.setPrice(rs.getInt("price"));
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
            throw new Error("Error: Clase ProductDao, method:listProducts" + e.toString());
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
                product.setPrice(rs.getInt("price"));
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
            throw new Error("Error: Clase ProductDao, method:getProductById" + e.toString());
        }
        return null;
    }

    public List<Product> getProductsByCategoryId(int categoryId) {

        List<Product> products = new ArrayList<>();
        try {
            String query = "SELECT * FROM product WHERE productCategoryId=?";
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
                product.setPrice(rs.getInt("price"));
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
