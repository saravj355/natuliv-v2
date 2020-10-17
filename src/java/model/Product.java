package model;

/**
 *
 * @author sarav
 */
public class Product {
    private int id;
    private int supplierId;
    private int productCategoryId;
    private String name;
    private String description;
    private double price;
    private boolean isActive;
    
    public Product() {}

    public Product(int id, int supplierId, int productCategoryId, String name, String description, double price, boolean isActive) {
        this.id = id;
        this.supplierId = supplierId;
        this.productCategoryId = productCategoryId;
        this.name = name;
        this.description = description;
        this.price = price;
        this.isActive = isActive;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getSupplierId() {
        return supplierId;
    }

    public void setSupplierId(int supplierId) {
        this.supplierId = supplierId;
    }

    public int getProductCategoryId() {
        return productCategoryId;
    }

    public void setProductCategoryId(int productCategoryId) {
        this.productCategoryId = productCategoryId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public boolean isIsActive() {
        return isActive;
    }

    public void setIsActive(boolean isActive) {
        this.isActive = isActive;
    }
    
    
    
}
