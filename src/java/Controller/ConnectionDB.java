package Controller;

import java.sql.*;

public class ConnectionDB {
    private String USERNAME = "root";
    private String PASSWORD = "";
    private String HOST = "localhost";
    private String PORT = "3306";
    private String DATABASE = "login";
    private String CLASSNAME = "com.mysql.jdbc.Driver";
    private String URL = "jdbc:mysql://" + HOST + ":" + PORT + "/" + DATABASE;
    private Connection con;
    
    public ConnectionDB(){
        try {
            Class.forName(CLASSNAME);
            con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (ClassNotFoundException e) {
            System.err.println("Error " + e);
        }catch(SQLException e){
            System.err.println("Error " + e);
        }
    }
    
    public Connection getConnectionDB(){
        return con;
    }
    
    public static void main(String[] args) {
        ConnectionDB con = new ConnectionDB();
    }
}
