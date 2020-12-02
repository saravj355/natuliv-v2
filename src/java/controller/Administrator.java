package controller;

import dao.ProductDao;
import dao.SupplierDao;
import dao.UserDao;
import java.util.List;
import model.Product;
import model.Supplier;
import model.User;

/**
 *
 * @author sarav
 */
public class Administrator {

    public Administrator() {
    }

    public List<User> findUsers() {
        UserDao getUsersList = new UserDao();
        return getUsersList.getUsers();
    }
    
    public List<User> searchUsers(String search) {
        UserDao getSearchUserList = new UserDao();
        return getSearchUserList.searchUser(search);
    }

    public List<Product> findProducts() {
        ProductDao getProductsList = new ProductDao();
        return getProductsList.getProducts();
    }

    public User findUserById(int id) {
        UserDao userDao = new UserDao();
        return userDao.getUserById(id);
    }

    public Product findProductById(int id) {
        ProductDao productDao = new ProductDao();
        return productDao.getProductById(id);
    }

    public Supplier findSupplierById(int id) {
        SupplierDao supplierDao = new SupplierDao();
        return supplierDao.getSupplierById(id);
    }
    
    public List<Product> findProductsByCategoryId(int categoryId) {
        ProductDao getProductsList = new ProductDao();
        return getProductsList.getProductsByCategoryId(categoryId);
    }
    

}
