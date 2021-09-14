package model;

public class UserRole {

    private int id;
    private String displayName;
    private String keyName;

    public UserRole(int id, String displayName, String keyName) {
        this.id = id;
        this.displayName = displayName;
        this.keyName = keyName;
    }

    public UserRole() {
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
