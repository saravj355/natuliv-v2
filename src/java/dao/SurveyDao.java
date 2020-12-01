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

    public boolean update(Survey survey) {
        PreparedStatement pst = null;
        try {
            String query = "update survey set userId=?, answer1=?, answer2=?, "
                    + "answer3=?, answer4=?, answer5=?, answer6=?, answer7=?, answer8=? where id=?";
            pst = this.conn.prepareStatement(query);
            pst.setInt(1, survey.getUserId());
            pst.setString(2, survey.getAnswer1());
            pst.setString(3, survey.getAnswer2());
            pst.setString(4, survey.getAnswer3());
            pst.setString(5, survey.getAnswer4());
            pst.setString(6, survey.getAnswer5());
            pst.setString(7, survey.getAnswer6());
            pst.setString(8, survey.getAnswer7());
            pst.setString(9, survey.getAnswer8());
            pst.setInt(10, survey.getId());

            if (pst.executeUpdate() == 1) {
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
            String query = "insert into survey(userId, answer1, answer2, "
                    + "answer3, answer4, answer5, answer6, answer7, answer8) values(?,?,?,?,?,?,?,?,?)";
            pst = this.conn.prepareStatement(query);
            pst.setInt(1, survey.getUserId());
            pst.setString(2, survey.getAnswer1());
            pst.setString(3, survey.getAnswer2());
            pst.setString(4, survey.getAnswer3());
            pst.setString(5, survey.getAnswer4());
            pst.setString(6, survey.getAnswer5());
            pst.setString(7, survey.getAnswer6());
            pst.setString(8, survey.getAnswer7());
            pst.setString(9, survey.getAnswer8());

            if (pst.executeUpdate() == 1) {
                pst.close();
                return true;
            }
        } catch (SQLException e) {
            System.out.println("Error: Clase SurveyDao, method:insert");
            e.printStackTrace();
        }
        return false;
    }

    public boolean deleteSurveyAnswersByUser(int id) {
        PreparedStatement pst = null;
        try {
            String query = "delete from survey where userId=?";
            pst = this.conn.prepareStatement(query);
            pst.setInt(1, id);

            if (pst.executeUpdate() == 1) {
                pst.close();
                return true;
            }
        } catch (SQLException e) {
            throw new Error(e);
        }
        return false;
    }
}
