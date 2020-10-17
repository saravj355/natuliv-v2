package model;

/**
 *
 * @author sarav
 */
public class UserRole {
    private int id;
    private String name;
    private String keyName;
    
    public UserRole() {}

    public UserRole(int id, String name, String keyName) {
        this.id = id;
        this.name = name;
        this.keyName = keyName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getKeyName() {
        return keyName;
    }

    public void setKeyName(String keyName) {
        this.keyName = keyName;
    }
    
    
}
