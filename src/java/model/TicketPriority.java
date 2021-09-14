package model;

public class TicketPriority {

    private int id;
    private String name;

    public TicketPriority(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public TicketPriority() {
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
