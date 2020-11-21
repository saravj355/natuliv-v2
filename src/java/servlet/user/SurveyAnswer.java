package servlet.user;

import dao.SurveyDao;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Survey;

@WebServlet(name = "SurveyAnswer", urlPatterns = {"/test"})
public class SurveyAnswer extends HttpServlet {

    RequestDispatcher rd = null;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        rd = request.getRequestDispatcher("/survey/index.jsp");
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

        Survey survey = new Survey();

        survey.setUserId(userId);
        survey.setAnswer1(answer1);
        survey.setAnswer2(answer2);
        survey.setAnswer3(answer3);
        survey.setAnswer4(answer4);
        survey.setAnswer5(answer5);
        survey.setAnswer6(answer6);
        survey.setAnswer7(answer7);
        survey.setAnswer8(answer8);

        SurveyDao surveyDao = new SurveyDao();
        surveyDao.insert(survey);

        response.sendRedirect(request.getContextPath() + "/app");
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
