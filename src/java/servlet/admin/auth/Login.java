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

/**
 *
 * @author sarav
 */
@WebServlet(name = "Login", urlPatterns = {"/admin/login"})
public class Login extends HttpServlet {

    RequestDispatcher rd = null;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        rd = request.getRequestDispatcher("/admin/auth/login.jsp");
        rd.include(request, response);

        processRequest(request, response);

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        if (email.isEmpty() || password.isEmpty()) {
            request.setAttribute("errorMessage", "Por favor llene todos los campos.");
            getServletContext().
                    getRequestDispatcher("/admin/auth/login.jsp")
                    .forward(request, response);
            return;
        }

        User admin = Auth.loginAdministrator(email, password);

        // user not found. redirect to index page
        if (admin == null) {
            request.setAttribute("errorMessage", "La contraseña o el correo electrónico son incorrectos.");
            getServletContext().
                    getRequestDispatcher("/admin/auth/login.jsp")
                    .forward(request, response);
            return;
        }

        HttpSession session = request.getSession();
        session.setAttribute("name", admin.getName());

        response.sendRedirect(request.getContextPath() + "/admin");

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
