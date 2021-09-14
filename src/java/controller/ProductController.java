package controller;

import dao.ProductCategoryDao;
import dao.TicketPriorityDao;
import dao.ProductDao;
import java.util.List;
import model.Product;
import model.ProductCategory;

public class ProductController {

    public boolean createProduct(Product product) {
        ProductDao productDao = new ProductDao();
        return productDao.insertProduct(product);
    }

    public boolean updateProduct(Product product) {
        ProductDao productDao = new ProductDao();
        return productDao.updateProduct(product);
    }

    public boolean deleteProductById(int productId) {
        ProductDao productDao = new ProductDao();
        return productDao.deleteProductById(productId);
    }

    public List<Product> listProducts() {
        ProductDao productDao = new ProductDao();
        return productDao.listProducts();
    }

    public List<ProductCategory> listProductCategories() {
        ProductCategoryDao productCategoryDao = new ProductCategoryDao();
        return productCategoryDao.listProductCategories();
    }

    public List<Product> findProductsByCategoryId(int categoryId) {
        ProductDao productDao = new ProductDao();
        return productDao.getProductsByCategoryId(categoryId);
    }

    public List<Product> searchProduct(String search) {
        ProductDao productDao = new ProductDao();
        return productDao.searchProduct(search);
    }

    public Product findProductById(int id) {
        ProductDao productDao = new ProductDao();
        return productDao.getProductById(id);
    }

    public boolean deleteProductBySupplierId(int supplierId) {
        ProductDao productDao = new ProductDao();
        return productDao.deleteProductBySupplierId(supplierId);
    }
}
