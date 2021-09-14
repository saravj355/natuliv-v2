package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Ticket;
import model.TicketComment;
import model.User;

public class TicketCommentDao {

    private final Connection conn;

    public TicketCommentDao() {
        this.conn = new ConnectionDB().getConnectionDB();
    }

    public boolean insertComment(TicketComment ticketComment) {
        try {
            String query = "INSERT INTO ticket_comment(ticketId, description, createdAt, userId) values(?,?,?,?)";
            PreparedStatement pst = this.conn.prepareStatement(query);
            pst.setInt(1, ticketComment.getTicketId());
            pst.setString(2, ticketComment.getDescription());
            pst.setTimestamp(3, ticketComment.getCreatedAt());
            pst.setInt(4, ticketComment.getUserId());

            if (pst.executeUpdate() == 1) {
                pst.close();
                return true;
            }

        } catch (SQLException e) {
            throw new Error("Error: Clase TicketCommentDao, method:insertComment" + e.toString());
        }
        return false;
    }

    public boolean deleteCommentByTicketId(int ticketId) {
        try {
            String query = "DELETE FROM ticket_comment WHERE ticketId=?";
            PreparedStatement pst = this.conn.prepareStatement(query);
            pst.setInt(1, ticketId);

            if (pst.executeUpdate() == 1) {
                pst.close();
                return true;
            }

        } catch (SQLException e) {
            throw new Error("Error: Clase TicketCommentDao, method:deleteCommentByTicketId" + e.toString());
        }
        return false;
    }

    public boolean deleteCommentByUserId(int userId) {
        try {
            String query = "DELETE FROM ticket_comment WHERE userId=?";
            PreparedStatement pst = this.conn.prepareStatement(query);
            pst.setInt(1, userId);

            if (pst.executeUpdate() == 1) {
                pst.close();
                return true;
            }

        } catch (SQLException e) {
            throw new Error("Error: Clase TicketCommentDao, method:deleteCommentByUserId" + e.toString());
        }
        return false;
    }

    public List<TicketComment> listTicketCommentsByTicketId(int ticketId) {
        List<TicketComment> ticketComments = new ArrayList<>();
        try {
            String query = "SELECT * FROM ticket_comment WHERE ticketId=?";
            PreparedStatement pst = this.conn.prepareStatement(query);

            pst.setInt(1, ticketId);

            ResultSet rs = pst.executeQuery();

            TicketDao ticketDao = new TicketDao();
            UserDao userDao = new UserDao();

            while (rs.next()) {
                TicketComment ticketComment = new TicketComment();
                ticketComment.setId(rs.getInt("id"));
                ticketComment.setTicketId(rs.getInt("ticketId"));
                ticketComment.setUserId(rs.getInt("userId"));
                ticketComment.setDescription(rs.getString("description"));
                ticketComment.setCreatedAt(rs.getTimestamp("createdAt"));

                Ticket ticket = ticketDao.getTicketById(ticketComment.getTicketId());
                ticketComment.setTicket(ticket);

                User user = userDao.findUserById(ticketComment.getUserId());
                ticketComment.setUser(user);

                ticketComments.add(ticketComment);
            }
            return ticketComments;
        } catch (SQLException e) {
            throw new Error("Error: Clase TicketCommentDao, method:listTicketCommentsByTicketId" + e.toString());
        }
    }
}
