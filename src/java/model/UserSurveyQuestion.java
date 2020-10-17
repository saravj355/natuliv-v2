package model;

/**
 *
 * @author sarav
 */
public class UserSurveyQuestion {
    private int id;
    private int userId;
    private int surveyQuestionId;
    
    public UserSurveyQuestion() {}

    public UserSurveyQuestion(int id, int userId, int surveyQuestionId) {
        this.id = id;
        this.userId = userId;
        this.surveyQuestionId = surveyQuestionId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getSurveyQuestionId() {
        return surveyQuestionId;
    }

    public void setSurveyQuestionId(int surveyQuestionId) {
        this.surveyQuestionId = surveyQuestionId;
    }
    
}
