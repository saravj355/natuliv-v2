package model;

import java.sql.Timestamp;

public class Ticket {

    private int id;
    private User responsiblePerson;
    private int responsiblePersonId;
    private TicketPriority priority;
    private int priorityId;
    private User user;
    private int userId;
    private Timestamp createdAt;
    private Timestamp updatedAt;
    private String description;
    private Timestamp completedAt;
    private TicketStatus status;
    private int statusId;

    public Ticket(int id, User responsiblePerson, int responsiblePersonId, TicketPriority priority, int priorityId, User user, int userId, Timestamp createdAt, Timestamp updatedAt, String description, Timestamp completedAt, TicketStatus status, int statusId) {
        this.id = id;
        this.responsiblePerson = responsiblePerson;
        this.responsiblePersonId = responsiblePersonId;
        this.priority = priority;
        this.priorityId = priorityId;
        this.user = user;
        this.userId = userId;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
        this.description = description;
        this.completedAt = completedAt;
        this.status = status;
        this.statusId = statusId;
    }

    public Ticket() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public User getResponsiblePerson() {
        return responsiblePerson;
    }

    public void setResponsiblePerson(User responsiblePerson) {
        this.responsiblePerson = responsiblePerson;
    }

    public int getResponsiblePersonId() {
        return responsiblePersonId;
    }

    public void setResponsiblePersonId(int responsiblePersonId) {
        this.responsiblePersonId = responsiblePersonId;
    }

    public TicketPriority getPriority() {
        return priority;
    }

    public void setPriority(TicketPriority priority) {
        this.priority = priority;
    }

    public int getPriorityId() {
        return priorityId;
    }

    public void setPriorityId(int priorityId) {
        this.priorityId = priorityId;
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

    public Timestamp getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt;
    }

    public Timestamp getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Timestamp updatedAt) {
        this.updatedAt = updatedAt;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Timestamp getCompletedAt() {
        return completedAt;
    }

    public void setCompletedAt(Timestamp completedAt) {
        this.completedAt = completedAt;
    }

    public TicketStatus getStatus() {
        return status;
    }

    public void setStatus(TicketStatus status) {
        this.status = status;
    }

    public int getStatusId() {
        return statusId;
    }

    public void setStatusId(int statusId) {
        this.statusId = statusId;
    }

}
