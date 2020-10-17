package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.Survey;

/**
 *
 * @author sarav
 */
public class SurveyDao {
    private Connection conn;
    
    public SurveyDao() {
        this.conn = new ConnectionDB().getConnectionDB();
    }  
    
    public boolean update(Survey survey){
        PreparedStatement pst = null;   
        try {                
            String query = "update survey set name=?, description=? where id=?";
            pst = this.conn.prepareStatement(query);
            pst.setString(1, survey.getName());
            pst.setString(2, survey.getDescription());
            pst.setInt(3, survey.getId());
                        
            if(pst.executeUpdate() == 1){                
                pst.close();
                return true;
            }                       
        } catch (SQLException e) {
            System.out.println("Error: Clase SurveyDao, method:update");
            e.printStackTrace();
        }
        return false;
    }
    
    public boolean insert(Survey survey) {
        PreparedStatement pst = null;   
        try {                
            String query = "insert into survey(name, description) values(?,?)";
            pst = this.conn.prepareStatement(query);
            pst.setString(1, survey.getName());
            pst.setString(2, survey.getDescription());
                        
            if(pst.executeUpdate() == 1){                
                pst.close();
                return true;
            }                       
        } catch (SQLException e) {
            System.out.println("Error: Clase SurveyDao, method:insert");
            e.printStackTrace();
        }
        return false;
    }
}
