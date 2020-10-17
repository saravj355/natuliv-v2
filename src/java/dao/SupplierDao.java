package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.Supplier;
/**
 *
 * @author sarav
 */
public class SupplierDao {
    
    private Connection conn;
    
    public SupplierDao() {
        this.conn = new ConnectionDB().getConnectionDB();
    }  
    
    public boolean update(Supplier supplier){
        PreparedStatement pst = null;   
        try {                
            String query = "update supplier set "
                    + "name=?, address=?, contactNumber=? where id=?";
            pst = this.conn.prepareStatement(query);
            pst.setString(1, supplier.getName());
            pst.setString(2, supplier.getAddress());
            pst.setString(3, supplier.getContactNumber());
            pst.setInt(4, supplier.getId());
                        
            if(pst.executeUpdate() == 1){                
                pst.close();
                return true;
            }                       
        } catch (SQLException e) {
            System.out.println("Error: Clase SupplierDao, method:update");
            e.printStackTrace();
        }
        return false;
    }
    
    public boolean insert(Supplier supplier) {
        PreparedStatement pst = null;   
        try {                
            String query = "insert into supplier(name, address,contactNumber) values(?,?,?)";
            pst = this.conn.prepareStatement(query);
            pst.setString(1, supplier.getName());
            pst.setString(2, supplier.getAddress());
            pst.setString(3, supplier.getContactNumber());
                        
            if(pst.executeUpdate() == 1){                
                pst.close();
                return true;
            }                       
        } catch (SQLException e) {
            System.out.println("Error: Clase SupplierDao, method:insert");
            e.printStackTrace();
        }
        return false;
    }
    


}
