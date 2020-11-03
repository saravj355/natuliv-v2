/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.admin.product;

import dao.ProductCategoryDao;
import dao.ProductDao;
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

        int productId = Integer.parseInt(request.getParameter("id"));
        
        // Get all the categories
        ProductCategoryDao productCategoryDao = new ProductCategoryDao();
        List<ProductCategory> productCategoryList = productCategoryDao.
                getProductCategories();
        session.setAttribute("productCategoryList", productCategoryList);
        
        //Brings the product data
        controller.Administrator productController = new controller.Administrator();
        Product product = productController.findProductById(productId);
                
        session.setAttribute("product", product);
        
       
        rd = request.getRequestDispatcher("/admin/product/EditProducts.jsp");
        rd.include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        int categoryId = Integer.parseInt(request.getParameter("category"));
        String description = request.getParameter("description");
        Double price = Double.parseDouble(request.getParameter("description"));
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
