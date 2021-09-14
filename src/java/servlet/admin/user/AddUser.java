package servlet.admin.user;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import controller.UserController;
import model.User;

/**
 *
 * @author sarav
 */
public class AddUser extends HttpServlet {

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

        rd = request.getRequestDispatcher("/src/portal-admin/views/user/addUser.jsp");
        rd.include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String gender = request.getParameter("gender");
        String userRole = request.getParameter("userRole");

        User user = new User();
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setEmail(email);
        user.setGender(gender);
        user.setPassword(password);

        UserController.createUser(user, userRole);

        response.sendRedirect(request.getContextPath() + "/admin/users?role=" + userRole.toLowerCase());
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
