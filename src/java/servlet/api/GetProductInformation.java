package servlet.api;

import com.google.gson.Gson;
import dao.ProductDao;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Product;

/**
 *
 * @author sarav
 */
public class GetProductInformation extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        int productId = Integer.parseInt(request.getParameter("productId"));
        
        
        response.setContentType("application/json;charset=UTF-8");
        response.setStatus(200);      
        
        ProductDao productDao = new ProductDao();
        Product product = productDao.getProductById(productId);       
       
        response.getWriter().write(new Gson().toJson(product)); //this is how simple GSON works
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
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
    }
}
