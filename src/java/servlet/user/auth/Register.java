package servlet.user.auth;

import controller.UserController;
import java.io.IOException;
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
@WebServlet(name = "Register", urlPatterns = {"/signup"})
public class Register extends HttpServlet {

    RequestDispatcher rd = null;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        rd = request.getRequestDispatcher("/src/portal-client/authentication/register.jsp");
        rd.include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        HttpSession session = request.getSession(true);

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String gender = request.getParameter("gender");
        String userRole = "USER";

        //checks empty inputs
        if (firstName.isEmpty() || lastName.isEmpty() || email.isEmpty()
                || password.isEmpty() || confirmPassword.isEmpty() || gender == null) {

            request.setAttribute("errorMessage", "Por favor llene todos los campos.");
            getServletContext().getRequestDispatcher("/src/portal-client/authentication/register.jsp").forward(request, response);
            return;
        }

        UserController userController = new UserController();

        User foundUser = userController.findUserByEmail(email);

        //Checks if email already exists
        if (foundUser != null) {
            request.setAttribute("errorMessage", "Este correo ya está asociado a una cuenta");
            getServletContext().
                    getRequestDispatcher("/src/portal-client/authentication/register.jsp")
                    .forward(request, response);
            return;
        }

        //Checks if password is different
        if (!password.equals(confirmPassword)) {
            request.setAttribute("errorMessage", "La contraseña no coincide");
            getServletContext().
                    getRequestDispatcher("/src/portal-client/authentication/register.jsp")
                    .forward(request, response);
            return;
        }

        User user = new User();
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setEmail(email);
        user.setGender(gender);
        user.setPassword(password);

        // creates user
        User newUser = UserController.createUser(user, userRole);

        // redirect to app page when user is created
        if (newUser != null) {
            session.setAttribute("userId", newUser.getId());
            session.setAttribute("firstName", newUser.getFirstName());
            response.sendRedirect(request.getContextPath() + "/test?id=" + newUser.getId());
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
