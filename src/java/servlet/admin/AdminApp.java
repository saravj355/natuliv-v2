package servlet.admin;

import dao.ProductCategoryDao;
import dao.SupplierDao;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
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
@WebServlet(name = "Administration", urlPatterns = {"/admin"})
public class AdminApp extends HttpServlet {

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

        //Get the product data
        controller.Administrator productController = new controller.Administrator();
        Product product = productController.findProductById(productId);

        session.setAttribute("product", product);

        rd = request.getRequestDispatcher("/admin/index.jsp");
        rd.include(request, response);

        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
