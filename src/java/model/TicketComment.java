package model;

import java.sql.Date;
import java.sql.Timestamp;

public class TicketComment {

    private int id;
    private int ticketId;
    private Ticket ticket;
    private String description;
    private Timestamp createdAt;
    private User user;
    private int userId;

    public TicketComment(int id, int ticketId, Ticket ticket, String description, Timestamp createdAt, User user, int userId) {
        this.id = id;
        this.ticketId = ticketId;
        this.ticket = ticket;
        this.description = description;
        this.createdAt = createdAt;
        this.user = user;
        this.userId = userId;
    }

    public TicketComment() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getTicketId() {
        return ticketId;
    }

    public void setTicketId(int ticketId) {
        this.ticketId = ticketId;
    }

    public Ticket getTicket() {
        return ticket;
    }

    public void setTicket(Ticket ticket) {
        this.ticket = ticket;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Timestamp getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

}
