package controller;

import dao.ProductDao;
import model.Product;

public class ProductController {

    public ProductController() {
    }

    public static Product findProductById(int id) {
        ProductDao getProductId = new ProductDao();
        return getProductId.getProductById(id);
    }

}
