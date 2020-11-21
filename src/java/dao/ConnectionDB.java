package dao;

import java.sql.*;

/**
 *
 * @author sarav
 */
public class ConnectionDB {

    private String USERNAME = "root";
    private String PASSWORD = "";
    private String HOST = "localhost";
    private String PORT = "3306";
    private String DATABASE = "natulivdb";
    private String CLASSNAME = "com.mysql.jdbc.Driver";
    private String URL = "jdbc:mysql://" + HOST + ":" + PORT + "/" + DATABASE;
    private Connection conn = null;

    public ConnectionDB() {
        try {
            Class.forName(CLASSNAME);
            this.conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (ClassNotFoundException e) {
            throw new Error(e);
        } catch (SQLException e) {
            throw new Error(e);
        }
    }

    public Connection getConnectionDB() {
        return this.conn;
    }
}
