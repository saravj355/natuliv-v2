package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Ticket;
import model.TicketPriority;
import model.TicketStatus;
import model.User;

public class TicketDao {

    private final Connection conn;

    public TicketDao() {
        this.conn = new ConnectionDB().getConnectionDB();
    }

    public boolean updateTicket(Ticket ticket) {
        try {
            String query = "UPDATE ticket SET "
                    + "responsible_person_id=?, priorityId=?, "
                    + "updatedAt=?, description=?, completedAt=?, statusId=? WHERE id=?";
            PreparedStatement pst = this.conn.prepareStatement(query);
            pst.setInt(1, ticket.getResponsiblePersonId());
            pst.setInt(2, ticket.getPriorityId());
            pst.setTimestamp(3, ticket.getUpdatedAt());
            pst.setString(4, ticket.getDescription());
            pst.setTimestamp(5, ticket.getCompletedAt());
            pst.setInt(6, ticket.getStatusId());
            pst.setInt(7, ticket.getId());

            if (pst.executeUpdate() == 1) {
                pst.close();
                return true;
            }
        } catch (SQLException e) {
            throw new Error("Error: Clase TicketDao, method:updateTicket" + e.toString());
        }
        return false;
    }

    public boolean insertTicket(Ticket ticket) {
        try {
            String query = "INSERT INTO ticket(responsible_person_id, priorityId, userId, createdAt,"
                    + "description, statusId) values(?,?,?,?,?,?)";
            PreparedStatement pst = this.conn.prepareStatement(query);
            pst.setInt(1, ticket.getResponsiblePersonId());
            pst.setInt(2, ticket.getPriorityId());
            pst.setInt(3, ticket.getUserId());
            pst.setTimestamp(4, ticket.getCreatedAt());
            pst.setString(5, ticket.getDescription());
            pst.setInt(6, ticket.getStatusId());

            if (pst.executeUpdate() == 1) {
                pst.close();
                return true;
            }

        } catch (SQLException e) {
            throw new Error("Error: Clase TicketDao, method:insertTicket" + e.toString());
        }
        return false;
    }

    public boolean deleteTicketById(int id) {
        try {
            String query = "DELETE FROM ticket WHERE id=?";
            PreparedStatement pst = this.conn.prepareStatement(query);
            pst.setInt(1, id);

            if (pst.executeUpdate() == 1) {
                pst.close();
                return true;
            }

        } catch (SQLException e) {
            throw new Error("Error: Clase TicketDao, method:deleteTicketById" + e.toString());
        }
        return false;
    }

    public boolean deleteTicketByUserId(int userId) {
        try {
            String query = "DELETE FROM ticket WHERE userId=?";
            PreparedStatement pst = this.conn.prepareStatement(query);
            pst.setInt(1, userId);

            if (pst.executeUpdate() == 1) {
                pst.close();
                return true;
            }

        } catch (SQLException e) {
            throw new Error("Error: Clase TicketDao, method:deleteTicketByUserId" + e.toString());
        }
        return false;
    }

    public List<Ticket> listTickets() {
        List<Ticket> tickets = new ArrayList<>();
        try {
            String query = "SELECT * FROM ticket";
            PreparedStatement pst = this.conn.prepareStatement(query);

            ResultSet rs = pst.executeQuery();

            UserDao userDao = new UserDao();
            TicketStatusDao ticketStatusDao = new TicketStatusDao();
            TicketPriorityDao ticketPriorityDao = new TicketPriorityDao();

            while (rs.next()) {
                Ticket ticket = new Ticket();
                ticket.setId(rs.getInt("id"));
                ticket.setResponsiblePersonId(rs.getInt("responsible_person_id"));
                ticket.setPriorityId(rs.getInt("priorityId"));
                ticket.setUserId(rs.getInt("userId"));
                ticket.setCreatedAt(rs.getTimestamp("createdAt"));
                ticket.setUpdatedAt(rs.getTimestamp("updatedAt"));
                ticket.setDescription(rs.getString("description"));
                ticket.setCompletedAt(rs.getTimestamp("completedAt"));
                ticket.setStatusId(rs.getInt("statusId"));

                User responsiblePerson = userDao.findUserById(ticket.getResponsiblePersonId());
                ticket.setResponsiblePerson(responsiblePerson);

                User user = userDao.findUserById(ticket.getUserId());
                ticket.setUser(user);

                TicketStatus ticketStatus = ticketStatusDao.getTicketStatusById(ticket.getStatusId());
                ticket.setStatus(ticketStatus);

                TicketPriority ticketPriority = ticketPriorityDao.getTicketPriorityById(ticket.getPriorityId());
                ticket.setPriority(ticketPriority);

                tickets.add(ticket);
            }
            return tickets;
        } catch (SQLException e) {
            throw new Error("Error: Clase TicketDao, method:listTickets" + e.toString());
        }
    }

    public Ticket getTicketById(int id) {
        try {
            String query = "SELECT * FROM ticket WHERE id=?";
            PreparedStatement pst = this.conn.prepareStatement(query);

            pst.setInt(1, id);
            ResultSet rs = pst.executeQuery();

            UserDao userDao = new UserDao();
            TicketStatusDao ticketStatusDao = new TicketStatusDao();
            TicketPriorityDao ticketPriorityDao = new TicketPriorityDao();

            while (rs.next()) {
                Ticket ticket = new Ticket();
                ticket.setId(rs.getInt("id"));
                ticket.setResponsiblePersonId(rs.getInt("responsible_person_id"));
                ticket.setPriorityId(rs.getInt("priorityId"));
                ticket.setUserId(rs.getInt("userId"));
                ticket.setCreatedAt(rs.getTimestamp("createdAt"));
                ticket.setUpdatedAt(rs.getTimestamp("updatedAt"));
                ticket.setDescription(rs.getString("description"));
                ticket.setCompletedAt(rs.getTimestamp("completedAt"));
                ticket.setStatusId(rs.getInt("statusId"));

                User responsiblePerson = userDao.findUserById(ticket.getResponsiblePersonId());
                ticket.setResponsiblePerson(responsiblePerson);

                User user = userDao.findUserById(ticket.getUserId());
                ticket.setUser(user);

                TicketStatus ticketStatus = ticketStatusDao.getTicketStatusById(ticket.getStatusId());
                ticket.setStatus(ticketStatus);

                TicketPriority ticketPriority = ticketPriorityDao.getTicketPriorityById(ticket.getPriorityId());
                ticket.setPriority(ticketPriority);

                return ticket;
            }
        } catch (SQLException e) {
            throw new Error("Error: Clase TicketDao, method:getTicketById" + e.toString());
        }
        return null;
    }

}
