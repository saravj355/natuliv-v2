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

@WebServlet(name = "Authentication", urlPatterns = {"/login"})
public class Login extends HttpServlet {

    RequestDispatcher rd = null;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        rd = request.getRequestDispatcher("/src/portal-client/authentication/login.jsp");
        rd.include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        HttpSession session = request.getSession(true);

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        //checks empty inputs
        if (email.isEmpty() || password.isEmpty()) {
            request.setAttribute("errorMessage", "Por favor rellene todos los campos.");
            getServletContext().
                    getRequestDispatcher("/src/portal-client/authentication/login.jsp")
                    .forward(request, response);
            return;
        }

        //Searchs the user
        User user = UserController.login(email, password);

        // user not found redirect to login page
        if (user == null) {
            request.setAttribute("errorMessage", "La contraseña o el correo electrónico son incorrectos ");
            getServletContext().
                    getRequestDispatcher("/src/portal-client/authentication/login.jsp")
                    .forward(request, response);
            return;
        }

        session.setAttribute("firstName", user.getFirstName());
        response.sendRedirect(request.getContextPath() + "/app");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
