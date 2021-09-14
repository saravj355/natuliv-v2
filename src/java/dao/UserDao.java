package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.User;
import model.UserRole;

public class UserDao {

    private final Connection conn;

    public UserDao() {
        this.conn = new ConnectionDB().getConnectionDB();
    }

    public boolean insertUser(User user) {
        try {
            String query = "INSERT INTO user (firstName, lastName, "
                    + "email, passwordHash, gender,  userRoleId) values(?,?,?,?,?,?)";
            PreparedStatement pst = this.conn.prepareStatement(query);
            pst.setString(1, user.getFirstName());
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
            throw new Error("Error: Clase UserDao, method:insertUser" + e.toString());
        }
        return false;
    }

    public boolean updateUser(User user) {
        try {
            String query = "UPDATE user SET firstName=?, lastName=?, email=?, gender=? WHERE id=?";
            PreparedStatement pst = this.conn.prepareStatement(query);

            pst.setString(1, user.getFirstName());
            pst.setString(2, user.getLastName());
            pst.setString(3, user.getEmail());
            pst.setString(4, user.getGender());
            pst.setInt(5, user.getId());

            if (pst.executeUpdate() == 1) {
                pst.close();
                return true;
            }
        } catch (SQLException e) {
            throw new Error("Error: Clase UserDao, method:updateUser" + e.toString());
        }
        return false;
    }

    public boolean deleteUserById(int id) {
        try {
            String query = "DELETE FROM user WHERE id=?";
            PreparedStatement pst = this.conn.prepareStatement(query);

            pst.setInt(1, id);

            if (pst.executeUpdate() == 1) {
                pst.close();
                return true;
            }
        } catch (SQLException e) {
            throw new Error("Error: Clase UserDao, method:deleteUserById" + e.toString());
        }
        return false;
    }

    public List<User> searchUsers(String search, int userRoleId) {
        List<User> users = new ArrayList<>();
        try {
            String query = "SELECT * FROM user WHERE (firstName like '%" + search + "%'"
                    + "or lastName like '%" + search + "%' or email like '%" + search + "%') and userRoleId=" + userRoleId;
            PreparedStatement pst = this.conn.prepareStatement(query);

            ResultSet rs = pst.executeQuery();

            while (rs.next()) {
                User user = new User();
                user.setId(rs.getInt("id"));
                user.setFirstName(rs.getString("firstName"));
                user.setLastName(rs.getString("lastName"));
                user.setEmail(rs.getString("email"));
                user.setGender(rs.getString("gender"));
                users.add(user);
            }
            return users;

        } catch (SQLException e) {
            throw new Error("Error: Clase UserDao, method:searchUser" + e.toString());
        }
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
                user.setFirstName(rs.getString("firstName"));
                user.setLastName(rs.getString("lastName"));
                user.setEmail(rs.getString("email"));
                user.setPasswordHash(rs.getString("passwordHash"));
                user.setGender(rs.getString("gender"));
                user.setUserRoleId(rs.getInt("userRoleId"));
                return user;
            }
        } catch (SQLException e) {
            throw new Error("Error: Clase UserDao, method:findUserByEmail" + e.toString());
        }
        return null;
    }

    public List<User> listUsersByRoleId(int userRoleId) {
        List<User> users = new ArrayList<>();
        try {
            String query = "SELECT * FROM user WHERE userRoleId=" + userRoleId;
            PreparedStatement pst = this.conn.prepareStatement(query);

            ResultSet rs = pst.executeQuery();

            while (rs.next()) {
                User user = new User();
                user.setId(rs.getInt("id"));
                user.setFirstName(rs.getString("firstName"));
                user.setLastName(rs.getString("lastName"));
                user.setEmail(rs.getString("email"));
                user.setGender(rs.getString("gender"));
                users.add(user);
            }
            return users;

        } catch (SQLException e) {
            throw new Error("Error: Clase UserDao, method:listUsersByRoleId" + e.toString());
        }
    }

    public User findUserById(int id) {
        try {
            String query = "SELECT * FROM user WHERE id=?";
            PreparedStatement pst = this.conn.prepareStatement(query);
            pst.setInt(1, id);
            ResultSet rs = pst.executeQuery();

            while (rs.next()) {
                User user = new User();
                user.setId(rs.getInt("id"));
                user.setFirstName(rs.getString("firstName"));
                user.setLastName(rs.getString("lastName"));
                user.setEmail(rs.getString("email"));
                user.setGender(rs.getString("gender"));
                user.setUserRoleId(rs.getInt("userRoleId"));
                return user;
            }
        } catch (SQLException e) {
            throw new Error("Error: Clase UserDao, method:getUserById" + e.toString());
        }
        return null;
    }

    public int getUsersQuantityByGender(String gender) {
        int count = 0;
        try {
            String query = "SELECT COUNT(*) FROM user WHERE gender=? and userRoleId=2";
            PreparedStatement pst = this.conn.prepareStatement(query);
            pst.setString(1, gender);
            ResultSet rs = pst.executeQuery();

            while (rs.next()) {
                count = rs.getInt(1);
            }
            return count;

        } catch (SQLException e) {
            throw new Error("Error: Clase UserDao, method:getUsersQuantityByGender" + e.toString());
        }
    }

    public int getUsersQuantityByRoleId(int roleId) {
        int count = 0;
        try {
            String query = "SELECT COUNT(*) FROM user WHERE userRoleId=" + roleId;
            PreparedStatement pst = this.conn.prepareStatement(query);
            ResultSet rs = pst.executeQuery();

            while (rs.next()) {
                count = rs.getInt(1);
            }
            return count;

        } catch (SQLException e) {
            throw new Error("Error: Clase UserDao, method:getUsersQuantityByRoleId" + e.toString());
        }
    }

    public UserRole getUserRoleByKeyName(String keyName) {
        try {
            String query = "SELECT * FROM user_role WHERE keyName=?";
            PreparedStatement pst = this.conn.prepareStatement(query);
            pst.setString(1, keyName);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                UserRole userRole = new UserRole();
                userRole.setId(rs.getInt("id"));
                userRole.setKeyName(rs.getString("keyName"));
                userRole.setDisplayName(rs.getString("displayName"));
                return userRole;
            }
        } catch (SQLException e) {
            throw new Error("Error: Clase UserDao, method:getUserRoleByKeyName" + e.toString());
        }
        return null;
    }
}
