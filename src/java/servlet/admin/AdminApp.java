package servlet.admin;

import controller.UserController;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author sarav
 */
@WebServlet(name = "AdminApp", urlPatterns = {"/admin"})
public class AdminApp extends HttpServlet {

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

        if (session.getAttribute("firstName") == null) {
            response.sendRedirect(request.getContextPath() + "/admin/login");
        }

        UserController userController = new UserController();

        int userFemaleQuantity = userController.getUserQuantityByGender("Femenino");
        session.setAttribute("FEMALE_USERS_QUANTITY", userFemaleQuantity);

        int userMaleQuantity = userController.getUserQuantityByGender("Masculino");
        session.setAttribute("MALE_USERS_QUANTITY", userMaleQuantity);

        rd = request.getRequestDispatcher("/src/portal-admin/views/main.jsp");
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
    }

}
