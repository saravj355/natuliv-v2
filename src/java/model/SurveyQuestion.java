package model;

/**
 *
 * @author sarav
 */
public class SurveyQuestion {

    private int id;
    private int surveyId;
    private int userId;
    private String answer;

    public SurveyQuestion() {
    }

    public SurveyQuestion(int id, int surveyId, int userId, String answer) {
        this.id = id;
        this.surveyId = surveyId;
        this.userId = userId;
        this.answer = answer;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getSurveyId() {
        return surveyId;
    }

    public void setSurveyId(int surveyId) {
        this.surveyId = surveyId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

}
