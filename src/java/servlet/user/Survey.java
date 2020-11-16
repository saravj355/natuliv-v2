/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.user;

import dao.SurveyQuestionDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.SurveyQuestion;

/**
 *
 * @author LENOVO
 */
@WebServlet(name = "Survey", urlPatterns = {"/test"})
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

        rd = request.getRequestDispatcher("/survey/index.jsp");
        rd.include(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int userId = Integer.parseInt(request.getParameter("userId"));
        String question1 = request.getParameter("question1");
        String question2 = request.getParameter("question2");
        String question3 = request.getParameter("question3");
        String question4 = request.getParameter("question4");
        String question5 = request.getParameter("question5");
        String question6 = request.getParameter("question6");
        String question7 = request.getParameter("question7");
        String question8 = request.getParameter("question8");

        SurveyQuestion surveyQuestion = new SurveyQuestion();
        surveyQuestion.setUserId(userId);
        surveyQuestion.setSurveyId(1);
        surveyQuestion.setAnswer(question1);
        
        SurveyQuestionDao surveyQuestionDao = new SurveyQuestionDao();
        surveyQuestionDao.insert(surveyQuestion);

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
