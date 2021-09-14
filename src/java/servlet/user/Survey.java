package servlet.user;

import controller.UserController;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "SurveyAnswer", urlPatterns = {"/test"})
public class Survey extends HttpServlet {

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
            response.sendRedirect(request.getContextPath() + "/login");
        }

        rd = request.getRequestDispatcher("/src/portal-client/views/survey.jsp");
        rd.include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");

        int userId = Integer.parseInt(request.getParameter("userId"));
        String answer1 = request.getParameter("answer1");
        String answer2 = request.getParameter("answer2");
        String answer3 = request.getParameter("answer3");
        String answer4 = request.getParameter("answer4");
        String answer5 = request.getParameter("answer5");
        String answer6 = request.getParameter("answer6");
        String answer7 = request.getParameter("answer7");
        String answer8 = request.getParameter("answer8");

        String[] userAnswers = {answer1, answer2, answer3, answer4, answer5, answer6, answer7, answer8};

        UserController userController = new UserController();

        userController.insertUserSurveyQuestion(userId, userAnswers);

        response.sendRedirect(request.getContextPath() + "/app");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
