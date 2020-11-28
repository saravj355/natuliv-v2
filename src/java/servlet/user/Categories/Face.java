package servlet.user.Categories;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Product;

/**
 *
 * @author sarav
 */
public class Face extends HttpServlet {

    RequestDispatcher rd;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        HttpSession session = request.getSession();

        controller.Administrator list = new controller.Administrator();

        List<Product> listProducts = list.findProductsByCategoryId(2);
        session.setAttribute("LIST_ALL_PRODUCTS", listProducts);
        


//        if (session.getAttribute("name") == null) {
//            response.sendRedirect(request.getContextPath() + "/login");
//        }

        rd = request.getRequestDispatcher("/app/src/category/face.jsp");
        rd.include(request, response);
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
