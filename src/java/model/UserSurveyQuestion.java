package model;

public class UserSurveyQuestion {

    private int id;
    private int userId;
    private String answer;
    private int questionId;

    public UserSurveyQuestion(int id, int userId, String answer, int questionId) {
        this.id = id;
        this.userId = userId;
        this.answer = answer;
        this.questionId = questionId;
    }

    public UserSurveyQuestion() {
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

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public int getQuestionId() {
        return questionId;
    }

    public void setQuestionId(int questionId) {
        this.questionId = questionId;
    }

}
