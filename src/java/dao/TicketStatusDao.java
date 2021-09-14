package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.TicketStatus;

public class TicketStatusDao {

    private final Connection conn;

    public TicketStatusDao() {
        this.conn = new ConnectionDB().getConnectionDB();
    }

    public List<TicketStatus> listTicketStatus() {
        List<TicketStatus> ticketStatusList = new ArrayList<>();
        try {
            String query = "SELECT * FROM ticket_status";
            PreparedStatement pst = this.conn.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                TicketStatus ticketStatus = new TicketStatus();
                ticketStatus.setId(rs.getInt("id"));
                ticketStatus.setName(rs.getString("name"));
                ticketStatusList.add(ticketStatus);
            }
            return ticketStatusList;
        } catch (SQLException e) {
            throw new Error("Error: Clase TicketStatusDao, method:listTicketStatus" + e.toString());
        }

    }

    public TicketStatus getTicketStatusById(int ticketStatusId) {
        try {
            String query = "SELECT * FROM ticket_status WHERE id = ?";
            PreparedStatement pst = this.conn.prepareStatement(query);
            pst.setInt(1, ticketStatusId);
            ResultSet rs = pst.executeQuery();

            while (rs.next()) {
                TicketStatus ticketStatus = new TicketStatus();
                ticketStatus.setId(rs.getInt("id"));
                ticketStatus.setName(rs.getString("name"));
                return ticketStatus;
            }
        } catch (SQLException e) {
            throw new Error("Error: Clase TicketStatusDao, method:getTicketStatusById" + e.toString());
        }
        return null;
    }

}
