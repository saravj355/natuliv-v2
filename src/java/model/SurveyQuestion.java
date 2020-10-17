package model;

/**
 *
 * @author sarav
 */
public class SurveyQuestion {
    private int id;
    private int surveyId;
    private String question;
    
    public SurveyQuestion() {}

    public SurveyQuestion(int id, int surveyId, String question) {
        this.id = id;
        this.surveyId = surveyId;
        this.question = question;
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

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    
    
    
}
