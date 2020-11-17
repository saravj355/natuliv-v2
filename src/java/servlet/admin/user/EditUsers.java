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

/**
 *
 * @author sarav
 */
public class EditUsers extends HttpServlet {

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

        if (session.getAttribute("name") == null) {
            response.sendRedirect(request.getContextPath() + "/admin/login");
        }

        int userId = Integer.parseInt(request.getParameter("id"));

        //Get the product data
        controller.Administrator userController = new controller.Administrator();
        User user = userController.findUserById(userId);

        session.setAttribute("user", user);

        rd = request.getRequestDispatcher("/admin/user/editUser.jsp");
        rd.include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        int userId = Integer.parseInt(request.getParameter("userId"));
        String name = request.getParameter("name");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        

        User user = new User();
        user.setId(userId);
        user.setName(name);
        user.setLastName(lastName);
        user.setEmail(email);
        
        UserDao userDao = new UserDao();
        userDao.update(user);

        response.sendRedirect(request.getContextPath() + "/admin/users");

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
