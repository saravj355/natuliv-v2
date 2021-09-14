package servlet.admin.user;

import dao.UserDao;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.User;
import controller.UserController;

/**
 *
 * @author sarav
 */
public class EditUser extends HttpServlet {

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

        int userId = Integer.parseInt(request.getParameter("id"));

        //Get user data
        UserController userController = new UserController();
        User user = userController.findUserById(userId);

        session.setAttribute("user", user);

        rd = request.getRequestDispatcher("/src/portal-admin/views/user/editUser.jsp");
        rd.include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        int userId = Integer.parseInt(request.getParameter("userId"));
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String gender = request.getParameter("gender");

        User user = new User();
        user.setId(userId);
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setEmail(email);
        user.setGender(gender);

        UserController userService = new UserController();
        userService.updateUser(user);
        
        response.sendRedirect(request.getContextPath() + "/admin/users?role=user" );
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
