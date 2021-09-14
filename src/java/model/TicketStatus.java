package model;

public class TicketStatus {

    private int id;
    private String name;

    public TicketStatus(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public TicketStatus() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

}
