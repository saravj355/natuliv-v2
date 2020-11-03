/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.admin.product;

import dao.ProductDao;
import java.io.IOException;
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
        
        //Brings all the categories
//        controller.Administrator productCategory = new controller.Administrator();
//        ProductCategory category = productCategory.listCategories();
//        session.setAttribute("Category", category);
        
        //Brings the product data
        controller.Administrator products = new controller.Administrator();
        Product product = products.findProductsById(productId);
        session.setAttribute("Product", product);
        
        rd = request.getRequestDispatcher("/admin/product/EditProducts.jsp");
        rd.include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
