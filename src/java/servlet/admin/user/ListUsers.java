package servlet.admin.user;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.User;

/**
 *
 * @author sarav
 */
@WebServlet(name = "ListUsers", urlPatterns = {"/admin/users"})
public class ListUsers extends HttpServlet {

    RequestDispatcher rd = null;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        HttpSession session = request.getSession();

        if (session.getAttribute("name") == null) {
            response.sendRedirect(request.getContextPath() + "/admin/login");
        }

        controller.Administrator administratorController = new controller.Administrator();
        List<User> listUsers = administratorController.findUsers();

        session.setAttribute("LIST_ALL_USERS", listUsers);

        rd = request.getRequestDispatcher("/admin/user/listusers.jsp");
        rd.include(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setHeader("Cache-Control", "no-cache, no store, must-revalidate");

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
