package model;

public class Product {

    private int id;
    private int supplierId;
    private Supplier supplier;
    private int productCategoryId;
    private ProductCategory productCategory;
    private String name;
    private String description;
    private int price;
    private boolean isActive;
    private String imagePath;

    public Product(int id, int supplierId, Supplier supplier, int productCategoryId, ProductCategory productCategory, String name, String description, int price, boolean isActive, String imagePath) {
        this.id = id;
        this.supplierId = supplierId;
        this.supplier = supplier;
        this.productCategoryId = productCategoryId;
        this.productCategory = productCategory;
        this.name = name;
        this.description = description;
        this.price = price;
        this.isActive = isActive;
        this.imagePath = imagePath;
    }

    public Product() {
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

    public Supplier getSupplier() {
        return supplier;
    }

    public void setSupplier(Supplier supplier) {
        this.supplier = supplier;
    }

    public int getProductCategoryId() {
        return productCategoryId;
    }

    public void setProductCategoryId(int productCategoryId) {
        this.productCategoryId = productCategoryId;
    }

    public ProductCategory getProductCategory() {
        return productCategory;
    }

    public void setProductCategory(ProductCategory productCategory) {
        this.productCategory = productCategory;
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

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public boolean isActive() {
        return isActive;
    }

    public void setIsActive(boolean isActive) {
        this.isActive = isActive;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }

}
