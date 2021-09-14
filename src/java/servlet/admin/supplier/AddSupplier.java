package servlet.admin.supplier;

import controller.SupplierController;
import dao.SupplierDao;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Supplier;

/**
 *
 * @author sarav
 */
public class AddSupplier extends HttpServlet {

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

        rd = request.getRequestDispatcher("/src/portal-admin/views/supplier/addSupplier.jsp");
        rd.include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String name = request.getParameter("name");
        String address = request.getParameter("address");
        String contactNumber = request.getParameter("contactNumber");
        String websiteUrl = request.getParameter("websiteUrl");
        String logoPath = request.getParameter("logoPath");

         String filePath = "src/portal-admin/src/img/suppliers/";
        Supplier supplier = new Supplier();
        supplier.setName(name);
        supplier.setAddress(address);
        supplier.setContactNumber(contactNumber);
        supplier.setWebsiteUrl(websiteUrl);
        supplier.setLogoPath(filePath + logoPath);

        SupplierController supplierController = new SupplierController();
        supplierController.createSupplier(supplier);

        response.sendRedirect(request.getContextPath() + "/admin/suppliers");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
