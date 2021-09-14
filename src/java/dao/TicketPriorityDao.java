package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.TicketPriority;

public class TicketPriorityDao {

    private final Connection conn;

    public TicketPriorityDao() {
        this.conn = new ConnectionDB().getConnectionDB();
    }

    public List<TicketPriority> listTicketPriorities() {
        List<TicketPriority> ticketPriorities = new ArrayList<>();
        try {
            String query = "SELECT * FROM ticket_priority";
            PreparedStatement pst = this.conn.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                TicketPriority ticketPriority = new TicketPriority();
                ticketPriority.setId(rs.getInt("id"));
                ticketPriority.setName(rs.getString("name"));
                ticketPriorities.add(ticketPriority);
            }
            return ticketPriorities;
        } catch (SQLException e) {
            throw new Error("Error: Clase TicketPriorityDao, method:listTicketPriorities" + e.toString());
        }

    }

    public TicketPriority getTicketPriorityById(int ticketPriorityId) {
        try {
            String query = "SELECT * FROM ticket_priority WHERE id=?";
            PreparedStatement pst = this.conn.prepareStatement(query);
            pst.setInt(1, ticketPriorityId);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                TicketPriority ticketPriority = new TicketPriority();
                ticketPriority.setId(rs.getInt("id"));
                ticketPriority.setName(rs.getString("name"));
                return ticketPriority;
            }
        } catch (SQLException e) {
            throw new Error("Error: Clase TicketPriorityDao, method:getTicketPriorityById" + e.toString());
        }
        return null;
    }

}
