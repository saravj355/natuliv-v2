package servlet.user.auth;

import controller.Auth;
import dao.UserDao;
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

        rd = request.getRequestDispatcher("/authentication/register.jsp");
        rd.include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        HttpSession session = request.getSession(true);

        String name = request.getParameter("name");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String gender = request.getParameter("gender");

        //checks empty inputs
        if (name.isEmpty() || lastName.isEmpty() || email.isEmpty()
                || password.isEmpty() || confirmPassword.isEmpty() || gender == null) {

            request.setAttribute("errorMessage", "Por favor llene todos los campos.");
            getServletContext().getRequestDispatcher("/authentication/register.jsp").forward(request, response);
            return;
        }

        //Checks if password is different
        if (!password.equals(confirmPassword)) {
            request.setAttribute("errorMessage", "La contraseña no coincide");
            getServletContext().
                    getRequestDispatcher("/authentication/register.jsp")
                    .forward(request, response);
            return;
        }

        UserDao userDao = new UserDao();

        User user = userDao.findUserByEmail(email);
        //Checks if email already exists
        if (user != null) {
            request.setAttribute("errorMessage", "Este correo ya está asociado a una cuenta");
            getServletContext().
                    getRequestDispatcher("/authentication/register.jsp")
                    .forward(request, response);
            return;
        }

        // creates user
        User newUser = Auth.register(name, lastName, email, password, gender);

        User userId = userDao.findUserIdByEmail(email);
        // redirect to app page when user is created
        if (newUser != null) {
            session.setAttribute("userId", userId.getId());
            session.setAttribute("name", newUser.getName());
            response.sendRedirect(request.getContextPath() + "/test?id=" + userId.getId());
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
