package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.SurveyQuestion;

/**
 *
 * @author sarav
 */
public class SurveyQuestionDao {
    private Connection conn;
    
    public SurveyQuestionDao() {
        this.conn = new ConnectionDB().getConnectionDB();
    }  
    
    public boolean update(SurveyQuestion surveyQuestion){
        PreparedStatement pst = null;   
        try {                
            String query = "update survey_question set surveyId=?, userId=?, answer=? where id=?";
            pst = this.conn.prepareStatement(query);
            pst.setInt(1, surveyQuestion.getSurveyId());
            pst.setInt(2, surveyQuestion.getUserId());
            pst.setString(3, surveyQuestion.getAnswer());
            pst.setInt(4, surveyQuestion.getId());
                        
            if(pst.executeUpdate() == 1){                
                pst.close();
                return true;
            }                       
        } catch (SQLException e) {
            System.out.println("Error: Clase SurveyQuestionDao, method:update");
            e.printStackTrace();
        }
        return false;
    }
    
    public boolean insert(SurveyQuestion surveyQuestion) {
        PreparedStatement pst = null;   
        try {                
            String query = "insert into survey_question(surveyId, userId, answer) values(?,?,?)";
            pst = this.conn.prepareStatement(query);
            pst.setInt(1, surveyQuestion.getSurveyId());
            pst.setInt(1, surveyQuestion.getUserId());
            pst.setString(2, surveyQuestion.getAnswer());
                        
            if(pst.executeUpdate() == 1){                
                pst.close();
                return true;
            }                       
        } catch (SQLException e) {
            System.out.println("Error: Clase SurveyQuestionDao, method:insert");
            e.printStackTrace();
        }
        return false;
    }
}

