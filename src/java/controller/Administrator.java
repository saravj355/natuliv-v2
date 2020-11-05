package controller;

import dao.ProductDao;
import dao.SupplierDao;
import dao.UserDao;
import java.util.List;
import model.Product;
import model.Supplier;
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
    
    public Product findProductById(int id){        
        ProductDao productDao = new ProductDao();        
        return productDao.getProductById(id);
    }
    
    public Supplier findSupplierById(int id){        
        SupplierDao supplierDao = new SupplierDao();        
        return supplierDao.getSupplierById(id);
    }
    
}
