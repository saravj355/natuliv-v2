package controller;

import dao.ProductDao;
import dao.SupplierDao;
import java.util.List;
import model.Supplier;

public class SupplierController {

    public boolean createSupplier(Supplier supplier) {
        SupplierDao supplierDao = new SupplierDao();
        return supplierDao.insertSupplier(supplier);
    }

    public boolean updateSupplier(Supplier supplier) {
        SupplierDao supplierDao = new SupplierDao();
        return supplierDao.updateSupplier(supplier);
    }

    public boolean deleteSupplierById(int supplierId) {
        SupplierDao supplierDao = new SupplierDao();
        ProductDao productDao = new ProductDao();

        productDao.deleteProductBySupplierId(supplierId);

        return supplierDao.deleteSupplierById(supplierId);
    }

    public List<Supplier> listSuppliers() {
        SupplierDao supplierDao = new SupplierDao();
        return supplierDao.listSuppliers();
    }

    public void searchSupplier() {

    }

    public Supplier findSupplierById(int supplierId) {
        SupplierDao supplierDao = new SupplierDao();
        return supplierDao.getSupplierById(supplierId);
    }
}
