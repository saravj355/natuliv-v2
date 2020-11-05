package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
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

    public boolean update(Supplier supplier) {
        PreparedStatement pst = null;
        try {
            String query = "update supplier set "
                    + "name=?, address=?, contactNumber=? where id=?";
            pst = this.conn.prepareStatement(query);
            pst.setString(1, supplier.getName());
            pst.setString(2, supplier.getAddress());
            pst.setString(3, supplier.getContactNumber());
            pst.setInt(4, supplier.getId());

            if (pst.executeUpdate() == 1) {
                pst.close();
                return true;
            }
        } catch (SQLException e) {
            throw new Error("Error: Class SupplierDao "
                    + "method:update" + e.toString());
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

            if (pst.executeUpdate() == 1) {
                pst.close();
                return true;
            }
        } catch (SQLException e) {
            throw new Error("Error: Class SupplierDao "
                    + "method:insert" + e.toString());
        }
        return false;
    }

     public List<Supplier> getSuppliers(){
        List<Supplier> suppliers = new ArrayList<Supplier>();        
        try {
            String query = "SELECT id, name, address, contactNumber FROM supplier";
            PreparedStatement pst = this.conn.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                Supplier supplier = new Supplier();
                supplier.setId(rs.getInt("id"));
                supplier.setName(rs.getString("name"));
                suppliers.add(supplier);
            }
            return suppliers;
        } catch (SQLException e) {
            throw new Error("Error: Class SupplierDao. "
                    + "method:getSuppliers" + e.toString());            
        }       
        
    }
     
      public List<Supplier> getSuppliersList(){
        List<Supplier> suppliers = new ArrayList<Supplier>();        
        try {
            String query = "SELECT id, name, address, contactNumber FROM supplier";
            PreparedStatement pst = this.conn.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                Supplier supplier = new Supplier();
                supplier.setId(rs.getInt("id"));
                supplier.setName(rs.getString("name"));
                supplier.setAddress(rs.getString("address"));
                supplier.setContactNumber(rs.getString("contactNumber"));
                
                suppliers.add(supplier);
            }
            return suppliers;
        } catch (SQLException e) {
            throw new Error("Error: Class SupplierDao. "
                    + "method:getSuppliers" + e.toString());            
        }       
        
    }

    public Supplier getSupplierById(int supplierId) {
        try {
            String query = "SELECT id, name, address, contactNumber FROM supplier where id = ?";
            PreparedStatement pst = this.conn.prepareStatement(query);
            pst.setInt(1, supplierId);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                Supplier supplier = new Supplier();
                supplier.setId(rs.getInt("id"));
                supplier.setName(rs.getString("name"));
                supplier.setAddress(rs.getString("address"));
                supplier.setContactNumber(rs.getString("contactNumber"));
                return supplier;
            }
        } catch (SQLException e) {
            throw new Error("Error: Class SupplierDao. "
                    + "method:getSupplierById" + e.toString());
        }
        return null;
    }

}
