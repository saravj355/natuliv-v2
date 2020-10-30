package model;

/**
 *
 * @author sarav
 */
public class User {
    private int id;
    private String name;
    private String lastName;
    private String email;
    private String passwordHash;
    private String gender;
    private int userRoleId;

    public User() {} 
    
    public User(int id, String name, String lastName, String email, String passwordHash, String gender, int userRoleId) {
        this.id = id;
        this.name = name;
        this.lastName = lastName;
        this.email = email;
        this.passwordHash = passwordHash;
        this.gender = gender;
        this.userRoleId = userRoleId;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPasswordHash(String passwordHash) {
        this.passwordHash = passwordHash;
    }
    
     public void setGender(String gender) {
        this.gender = gender;
    }

    public void setUserRoleId(int userRoleId) {
        this.userRoleId = userRoleId;
    }
    
    
    
    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getLastName() {
        return lastName;
    }

    public String getEmail() {
        return email;
    }

    public String getPasswordHash() {
        return passwordHash;
    }
    
    public String getGender() {
        return gender;
    }

    public int getUserRoleId() {
        return userRoleId;
    }
    
    
    
    
}
