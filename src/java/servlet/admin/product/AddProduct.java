package servlet.admin.product;

import controller.ProductController;
import controller.SupplierController;
import dao.TicketPriorityDao;
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
public class AddProduct extends HttpServlet {

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

        if (session.getAttribute("firstName") == null) {
            response.sendRedirect(request.getContextPath() + "/admin/login");
        }

        // Get all the categories
        ProductController productController = new ProductController();

        List<ProductCategory> productCategoryList = productController.listProductCategories();
        session.setAttribute("productCategoryList", productCategoryList);

        //Get all the suppliers
        SupplierController supplierController = new SupplierController();
        List<Supplier> supplierList = supplierController.listSuppliers();

        session.setAttribute("supplierList", supplierList);

        rd = request.getRequestDispatcher("/src/portal-admin/views/product/addProduct.jsp");
        rd.include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
        int supplierId = Integer.parseInt(request.getParameter("supplierId"));
        String description = request.getParameter("description");
        String name = request.getParameter("name");
        int price = Integer.parseInt(request.getParameter("price"));
        String imagePath = request.getParameter("imagePath");
        
        String filePath = "src/portal-admin/src/img/products/";

        Product product = new Product();
        product.setName(name);
        product.setProductCategoryId(categoryId);
        product.setDescription(description);
        product.setPrice(price);
        product.setIsActive(true);
        product.setSupplierId(supplierId);
        product.setImagePath(filePath + imagePath);

        ProductController productController = new ProductController();
        productController.createProduct(product);

        response.sendRedirect(request.getContextPath() + "/admin/products");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
