package controller;

import dao.TicketCommentDao;
import dao.TicketDao;
import dao.TicketPriorityDao;
import dao.TicketStatusDao;
import java.util.List;
import model.Ticket;
import model.TicketComment;
import model.TicketPriority;
import model.TicketStatus;
import model.User;

public class TicketController {

    public TicketController() {
    }

    public boolean createTicket(Ticket ticket) {
        TicketDao ticketDao = new TicketDao();
        return ticketDao.insertTicket(ticket);
    }

    public boolean updateTicket(Ticket ticket) {
        TicketDao ticketDao = new TicketDao();
        return ticketDao.updateTicket(ticket);
    }

    public boolean deleteTicketById(int ticketId) {
        TicketDao ticketDao = new TicketDao();

        TicketCommentDao ticketCommentDao = new TicketCommentDao();
        ticketCommentDao.deleteCommentByTicketId(ticketId);
        
        return ticketDao.deleteTicketById(ticketId);
    }

    public List<Ticket> listTickets() {
        TicketDao ticketDao = new TicketDao();
        return ticketDao.listTickets();
    }

    public Ticket findTicketById(int ticketId) {
        TicketDao ticketDao = new TicketDao();
        return ticketDao.getTicketById(ticketId);
    }

    public List<User> listResponsibleUsers() {
        UserController userController = new UserController();
        return userController.findUsersByKeyNameRole("SUPPORT");
    }

    public List<User> listUsers() {
        UserController userController = new UserController();
        return userController.findUsersByKeyNameRole("USER");
    }

    public List<TicketStatus> listTicketStatus() {
        TicketStatusDao ticketStatusDao = new TicketStatusDao();
        return ticketStatusDao.listTicketStatus();
    }

    public List<TicketPriority> listTicketPriorities() {
        TicketPriorityDao ticketPriorityDao = new TicketPriorityDao();
        return ticketPriorityDao.listTicketPriorities();
    }

    public void createTicketComment(TicketComment ticketComment) {
        TicketCommentDao ticketCommentDao = new TicketCommentDao();
        ticketCommentDao.insertComment(ticketComment);
    }

    public List<TicketComment> listTiketCommentsByTicketId(int ticketId) {
        TicketCommentDao ticketCommentDao = new TicketCommentDao();
        return ticketCommentDao.listTicketCommentsByTicketId(ticketId);
    }
}
