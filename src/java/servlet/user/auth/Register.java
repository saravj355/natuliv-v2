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
        rd = request.getRequestDispatcher("/auth/Register.jsp");
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

        HttpSession session = request.getSession(true);

        String name = request.getParameter("name");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String gender = request.getParameter("gender");

        //checks empty inputs
        if (name.isEmpty() || lastName.isEmpty() || email.isEmpty()
                || password.isEmpty() || confirmPassword.isEmpty() || gender.isEmpty()) {

            request.setAttribute("errorMessage", "Por favor llene todos los campos.");
            getServletContext().getRequestDispatcher("/auth/Register.jsp").forward(request, response);
            return;
        }

        //Checks if password is different
        if (!password.equals(confirmPassword)) {
            request.setAttribute("errorMessage", "La contraseña no coincide");
            getServletContext().
                    getRequestDispatcher("/auth/Register.jsp")
                    .forward(request, response);
            return;
        }

        UserDao userDao = new UserDao();

        User user = userDao.findUserByEmail(email);
        //Checks if email already exists
        if (user != null) {
            request.setAttribute("errorMessage", "Este correo ya está asociado a una cuenta");
            getServletContext().
                    getRequestDispatcher("/auth/Register.jsp")
                    .forward(request, response);
            return;
        }

        // user instance
        // creates user
        User newUser = Auth.register(name, lastName, email, password, gender);

        // redirect to menu page when user is created
        if(newUser != null){
            session.setAttribute("name", user.getName());
            response.sendRedirect(request.getContextPath() + "/app");
        }
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
