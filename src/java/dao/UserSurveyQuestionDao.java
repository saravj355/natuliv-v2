package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.UserSurveyQuestion;

public class UserSurveyQuestionDao {

    private final Connection conn;

    public UserSurveyQuestionDao() {
        this.conn = new ConnectionDB().getConnectionDB();
    }

    public boolean insertUserSurvey(UserSurveyQuestion userSurveyQuestion) {
        try {
            String query = "INSERT INTO user_survey_question (userId, answer, questionId) values(?,?,?)";
            PreparedStatement pst = this.conn.prepareStatement(query);
            pst.setInt(1, userSurveyQuestion.getUserId());
            pst.setString(2, userSurveyQuestion.getAnswer());
            pst.setInt(3, userSurveyQuestion.getQuestionId());

            if (pst.executeUpdate() == 1) {
                pst.close();
                return true;
            }
        } catch (SQLException e) {
            throw new Error("Error: Clase UserSurveyQuestionDao, method:insertUserSurvey" + e.toString());
        }
        return false;
    }

    public boolean deleteSurveyByUserId(int userId) {
        try {
            String query = "DELETE FROM user_survey_question WHERE userId=?";
            PreparedStatement pst = this.conn.prepareStatement(query);
            pst.setInt(1, userId);

            if (pst.executeUpdate() == 1) {
                pst.close();
                return true;
            }
        } catch (SQLException e) {
            throw new Error("Error: Clase UserSurveyQuestionDao, method:deleteSurveyByUserId" + e.toString());
        }
        return false;
    }

}
