package servlet.admin.survey;

import dao.UserDao;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class DataSurvey extends HttpServlet {

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

        UserDao userDao = new UserDao();
        int femaleGenderQuantity = userDao.getFemaleUsersQuantity();
        int maleGenderQuantity = userDao.getMaleUsersQuantity();

        session.setAttribute("USER_FEMALE_QUANTITY", femaleGenderQuantity);
        session.setAttribute("USER_MALE_QUANTITY", maleGenderQuantity);

        rd = request.getRequestDispatcher("/admin/views/survey/index.jsp");
        rd.include(request, response);

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
    }

}
