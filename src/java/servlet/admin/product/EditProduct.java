/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.admin.product;

import dao.ProductCategoryDao;
import dao.ProductDao;
import dao.SupplierDao;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Product;
import model.ProductCategory;
import model.Supplier;

/**
 *
 * @author sarav
 */
public class EditProduct extends HttpServlet {

    RequestDispatcher rd = null;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        HttpSession session = request.getSession();
        
        if (session.getAttribute("name") == null) {
            response.sendRedirect(request.getContextPath() + "/admin/login");
        }

        int productId = Integer.parseInt(request.getParameter("id"));

        // Get all the categories
        ProductCategoryDao productCategoryDao = new ProductCategoryDao();
        List<ProductCategory> productCategoryList = productCategoryDao.
                getProductCategories();
        session.setAttribute("productCategoryList", productCategoryList);

        //Get all the suppliers
        SupplierDao supplierDao = new SupplierDao();
        List<Supplier> supplierList = supplierDao.getSuppliers();
        session.setAttribute("supplierList", supplierList);
        
        //Get the product data
        controller.Administrator productController = new controller.Administrator();
        Product product = productController.findProductById(productId);

        session.setAttribute("product", product);
        
        
        

        rd = request.getRequestDispatcher("/admin/product/EditProduct.jsp");
        rd.include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        int productId = Integer.parseInt(request.getParameter("productId"));
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
        int supplierId = Integer.parseInt(request.getParameter("supplierId"));
        String description = request.getParameter("description");
        String name = request.getParameter("name");
        Double price = Double.parseDouble(request.getParameter("price"));
        Boolean isActive = Boolean.parseBoolean(request.getParameter("isActive"));
            
        Product product = new Product();
        product.setId(productId);
        product.setName(name);
        product.setProductCategoryId(categoryId);
        product.setDescription(description);
        product.setPrice(price);
        product.setIsActive(isActive);
        product.setSupplierId(supplierId);
        
        ProductDao productDao = new ProductDao();
        productDao.update(product);
        
        
        response.sendRedirect(request.getContextPath() + "/admin/products");
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
