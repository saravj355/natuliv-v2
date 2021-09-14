package model;

public class ProductCategory {

    private int id;
    private String displayName;
    private String keyName;

    public ProductCategory(int id, String displayName, String keyName) {
        this.id = id;
        this.displayName = displayName;
        this.keyName = keyName;
    }

    public ProductCategory() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDisplayName() {
        return displayName;
    }

    public void setDisplayName(String displayName) {
        this.displayName = displayName;
    }

    public String getKeyName() {
        return keyName;
    }

    public void setKeyName(String keyName) {
        this.keyName = keyName;
    }

}
