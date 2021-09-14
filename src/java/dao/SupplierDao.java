package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Supplier;

public class SupplierDao {

    private final Connection conn;

    public SupplierDao() {
        this.conn = new ConnectionDB().getConnectionDB();
    }

    public boolean updateSupplier(Supplier supplier) {
        try {
            String query = "UPDATE supplier SET "
                    + "name=?, address=?, contactNumber=?, websiteUrl=?, logoPath=? WHERE id=?";
            PreparedStatement pst = this.conn.prepareStatement(query);
            pst.setString(1, supplier.getName());
            pst.setString(2, supplier.getAddress());
            pst.setString(3, supplier.getContactNumber());
            pst.setString(4, supplier.getWebsiteUrl());
            pst.setString(5, supplier.getLogoPath());
            pst.setInt(6, supplier.getId());

            if (pst.executeUpdate() == 1) {
                pst.close();
                return true;
            }
            
        } catch (SQLException e) {
            throw new Error("Error: Clase SupplierDao, method:updateSupplier" + e.toString());
        }
        return false;
    }

    public boolean insertSupplier(Supplier supplier) {
        try {
            String query = "INSERT INTO supplier(name, address, contactNumber, websiteUrl, logoPath) values(?,?,?,?,?)";
            PreparedStatement pst = this.conn.prepareStatement(query);
            pst.setString(1, supplier.getName());
            pst.setString(2, supplier.getAddress());
            pst.setString(3, supplier.getContactNumber());
            pst.setString(4, supplier.getWebsiteUrl());
            pst.setString(5, supplier.getLogoPath());

            if (pst.executeUpdate() == 1) {
                pst.close();
                return true;
            }
        } catch (SQLException e) {
            throw new Error("Error: Clase SupplierDao, method:insertSupplier" + e.toString());
        }
        return false;
    }

    public boolean deleteSupplierById(int id) {
        try {
            String query = "DELETE FROM supplier WHERE id=?";
            PreparedStatement pst = this.conn.prepareStatement(query);
            pst.setInt(1, id);

            if (pst.executeUpdate() == 1) {
                pst.close();
                return true;
            }
        } catch (SQLException e) {
            throw new Error("Error: Clase SupplierDao, method:deleteSupplierById" + e.toString());
        }
        return false;
    }

    public List<Supplier> listSuppliers() {
        List<Supplier> suppliers = new ArrayList<>();
        try {
            String query = "SELECT * FROM supplier";
            PreparedStatement pst = this.conn.prepareStatement(query);
            ResultSet rs = pst.executeQuery();

            while (rs.next()) {
                Supplier supplier = new Supplier();
                supplier.setId(rs.getInt("id"));
                supplier.setName(rs.getString("name"));
                supplier.setAddress(rs.getString("address"));
                supplier.setContactNumber(rs.getString("contactNumber"));
                supplier.setWebsiteUrl(rs.getString("websiteUrl"));
                supplier.setLogoPath(rs.getString("logoPath"));
                suppliers.add(supplier);
            }

            return suppliers;
        } catch (SQLException e) {
            throw new Error("Error: Clase SupplierDao, method:listSuppliers" + e.toString());
        }
    }

    public Supplier getSupplierById(int supplierId) {
        try {
            String query = "SELECT * FROM supplier WHERE id = ?";
            PreparedStatement pst = this.conn.prepareStatement(query);
            pst.setInt(1, supplierId);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                Supplier supplier = new Supplier();
                supplier.setId(rs.getInt("id"));
                supplier.setName(rs.getString("name"));
                supplier.setAddress(rs.getString("address"));
                supplier.setContactNumber(rs.getString("contactNumber"));
                supplier.setWebsiteUrl(rs.getString("websiteUrl"));
                supplier.setLogoPath(rs.getString("logoPath"));
                return supplier;
            }
        } catch (SQLException e) {
            throw new Error("Error: Clase SupplierDao, method:getSupplierById" + e.toString());
        }
        return null;
    }
}
