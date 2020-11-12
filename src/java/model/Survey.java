package model;

/**
 *
 * @author sarav
 */
public class Survey {
    private int id;
    private String question;

    public Survey() {}

    public Survey(int id, String question) {
        this.id = id;
        this.question = question;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }
    
}

    
   
   