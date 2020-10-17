package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.UserSurveyQuestion;
/**
 *
 * @author sarav
 */
public class UserSurveyQuestionDao {
    private Connection conn;
    
    public UserSurveyQuestionDao() {
        this.conn = new ConnectionDB().getConnectionDB();
    }  
    
    public boolean update(UserSurveyQuestion userSurveyQuestion){
        PreparedStatement pst = null;   
        try {                
            String query = "update user_survey_question set "
                    + "userId=?, surveyQuestionId=? where id=?";
            pst = this.conn.prepareStatement(query);
            pst.setInt(1, userSurveyQuestion.getUserId());
            pst.setInt(2, userSurveyQuestion.getSurveyQuestionId());
            pst.setInt(3, userSurveyQuestion.getId());
                        
            if(pst.executeUpdate() == 1){                
                pst.close();
                return true;
            }                       
        } catch (SQLException e) {
            System.out.println("Error: Clase UserSurveyQuestionDao, method:update");
            e.printStackTrace();
        }
        return false;
    }
    
    public boolean insert(UserSurveyQuestion userSurveyQuestion) {
        PreparedStatement pst = null;   
        try {                
            String query = "insert into user_survey_question(userId, surveyQuestionId)"
                    + "values(?,?)";
            pst = this.conn.prepareStatement(query);
            pst.setInt(1, userSurveyQuestion.getUserId());
            pst.setInt(2, userSurveyQuestion.getSurveyQuestionId());
                        
            if(pst.executeUpdate() == 1){                
                pst.close();
                return true;
            }                       
        } catch (SQLException e) {
            System.out.println("Error: Clase UserSurveyQuestionDao, method:insert");
            e.printStackTrace();
        }
        return false;
    }
}
