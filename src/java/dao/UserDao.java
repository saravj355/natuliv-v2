package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Product;
import model.ProductCategory;
import model.Supplier;
import model.User;

/**
 *
 * @author sarav
 */
public class UserDao {

    private Connection conn;

    public UserDao() {
        this.conn = new ConnectionDB().getConnectionDB();
    }

    public boolean update(User user) {
        try {
            String query = "update user set"
                    + " name=?, lastName=?,"
                    + " email=?, passwordHash=?, gender=?, userRoleId=?"
                    + " where id=?";
            PreparedStatement pst = this.conn.prepareStatement(query);
            pst.setString(1, user.getName());
            pst.setString(2, user.getLastName());
            pst.setString(3, user.getEmail());
            pst.setString(4, user.getPasswordHash());
            pst.setString(5, user.getGender());
            pst.setInt(6, user.getUserRoleId());
            pst.setInt(7, user.getId());

            if (pst.executeUpdate() == 1) {
                pst.close();
                return true;
            }
        } catch (SQLException e) {
            System.out.println("Error: Clase UserDao, method:update");
            e.printStackTrace();
        }
        return false;
    }

    public boolean insert(User user) {
        try {
            String query = "insert into user (name, lastName, "
                    + "email, passwordHash, gender,  userRoleId) values(?,?,?,?,?,?)";
            PreparedStatement pst = this.conn.prepareStatement(query);
            pst.setString(1, user.getName());
            pst.setString(2, user.getLastName());
            pst.setString(3, user.getEmail());
            pst.setString(4, user.getPasswordHash());
            pst.setString(5, user.getGender());
            pst.setInt(6, user.getUserRoleId());

            if (pst.executeUpdate() == 1) {
                pst.close();
                return true;
            }
        } catch (SQLException e) {
            System.out.println("Error: Clase UserDao, method:insert");
            e.printStackTrace();
        }
        return false;
    }

    public User findUserByEmail(String email) {
        try {
            String query = "SELECT * FROM user WHERE email=?";
            PreparedStatement pst = this.conn.prepareStatement(query);
            pst.setString(1, email);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setLastName(rs.getString("lastName"));
                user.setEmail(rs.getString("email"));
                user.setPasswordHash(rs.getString("passwordHash"));
                user.setEmail(rs.getString("gender"));
                user.setUserRoleId(rs.getInt("userRoleId"));
                return user;
            }
        } catch (SQLException e) {
            throw new Error(e);
        }
        return null;
    }

    public List<User> getUsers() {
        List<User> users = new ArrayList<User>();
        try {
            String query = "select id, name, lastName, email, gender from user WHERE userRoleId = 2";
            PreparedStatement pst = this.conn.prepareStatement(query);

            ResultSet rs = pst.executeQuery();

            while (rs.next()) {
                User user = new User();
                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setLastName(rs.getString("lastName"));
                user.setEmail(rs.getString("email"));
                user.setGender(rs.getString("gender"));
                users.add(user);
            }
            return users;

        } catch (SQLException e) {
            System.out.println("Error: Clase UserDao, method:getUsers");
            e.printStackTrace();
        }
        return users;
    }

    public User getUserById(int id) {
        try {
            String query = "SELECT * FROM user WHERE id=?";
            PreparedStatement pst = this.conn.prepareStatement(query);
            pst.setInt(1, id);
            ResultSet rs = pst.executeQuery();

            while (rs.next()) {
                User user = new User();
                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setLastName(rs.getString("lastName"));
                user.setEmail(rs.getString("email"));
                user.setGender(rs.getString("gender"));
                return user;
            }
        } catch (SQLException e) {
            throw new Error(e);
        }
        return null;
    }

}
