package controller;

import dao.ConnectionDB;
import java.sql.*;
import model.AppResponse;

public class Queries extends ConnectionDB{
    
    
    /*
    * hace la consulta a la base de datos,
    * para verificar la existencia del usuario
    */
    public boolean authentication(String email, String password){
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        try {
            String query = "select * from users where email = ? and password = ?";
            pst = getConnectionDB().prepareStatement(query);
            pst.setString(1, email);
            pst.setString(2, password);
            rs = pst.executeQuery();
            
            if(rs.absolute(1)){
                return true;
            }
            
        } catch (Exception e) {
            System.err.println("Error " + e);
        }finally{
            try {
                if(getConnectionDB() !=  null)
                    getConnectionDB().close();
                
                if(pst != null)
                    pst.close();
                
                if(rs != null)
                    pst.close();
                
            } catch (Exception e) {
                System.err.println("Error " + e);
            }
        }
        return false;
    }
    public boolean register(String name, String lastName, String email, String password){
        
        PreparedStatement pst = null;
        try {
            String query = "insert into users (name, lastName, email, password) values(?,?,?,?)";
            pst = getConnectionDB().prepareStatement(query);
            pst.setString(1, name);
            pst.setString(2, lastName);
            pst.setString(3, email);
            pst.setString(4, password);
            
            if(pst.executeUpdate() == 1){
                return true;
            }
            
        } catch (Exception e) {
            System.err.println("Error " + e);
        }finally{
            try{
                if(getConnectionDB() != null)
                    getConnectionDB().close();   
                
                if(pst != null)
                    pst.close();  
            }catch(Exception e){
                System.err.println("Error " + e);
            }
        }
        return false;
    }
    
    
}
