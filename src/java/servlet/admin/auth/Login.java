package servlet.admin.auth;

import controller.Auth;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.User;

@WebServlet(name = "Login", urlPatterns = {"/admin/login"})
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

        rd = request.getRequestDispatcher("/admin/authentication/admin.login.jsp");
        rd.include(request, response);

        processRequest(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        if (email.isEmpty() || password.isEmpty()) {
            request.setAttribute("errorMessage", "Por favor llene todos los campos.");
            getServletContext().
                    getRequestDispatcher("/admin/authentication/admin.login.jsp")
                    .forward(request, response);
            return;
        }

        User admin = Auth.loginAdministrator(email, password);

        // user not found. redirect to index page
        if (admin == null) {
            request.setAttribute("errorMessage", "La contraseña o el correo electrónico son incorrectos.");
            getServletContext().
                    getRequestDispatcher("/admin/authentication/admin.login.jsp")
                    .forward(request, response);
            return;
        }

        HttpSession session = request.getSession();
        session.setAttribute("name", admin.getName());

        response.sendRedirect(request.getContextPath() + "/admin");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
