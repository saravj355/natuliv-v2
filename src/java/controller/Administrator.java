package controller;

import dao.ProductDao;
import dao.UserDao;
import java.util.List;
import model.Product;
import model.User;

public class Administrator {
    
    public Administrator() {
    }
    
    public List<User> findUsers() {        
        UserDao getUsersList = new UserDao();        
        return getUsersList.getUsers();
    }
    
    public List<Product> findProducts() {        
        ProductDao getProductsList = new ProductDao();        
        return getProductsList.getProducts();
    }
    
    public Product findProductsById(int id){        
        ProductDao getProduct = new ProductDao();        
        return getProduct.getProductsById(id);
    }
    
    
}
