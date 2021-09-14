package servlet.admin.ticket;

import controller.TicketController;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Ticket;
import model.TicketPriority;
import model.TicketStatus;
import model.User;

public class EditTicket extends HttpServlet {

    RequestDispatcher rd = null;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        HttpSession session = request.getSession();

        if (session.getAttribute("firstName") == null) {
            response.sendRedirect(request.getContextPath() + "/admin/login");
        }

        int ticketId = Integer.parseInt(request.getParameter("id"));

        TicketController ticketController = new TicketController();

        List<User> responsiblePersonList = ticketController.listResponsibleUsers();
        session.setAttribute("responsiblePersonList", responsiblePersonList);

        List<User> usersList = ticketController.listUsers();
        session.setAttribute("usersList", usersList);

        List<TicketPriority> ticketPriorityList = ticketController.listTicketPriorities();
        session.setAttribute("ticketPriorityList", ticketPriorityList);

        List<TicketStatus> ticketStatusList = ticketController.listTicketStatus();
        session.setAttribute("ticketStatusList", ticketStatusList);

        Ticket ticket = ticketController.findTicketById(ticketId);
        session.setAttribute("ticket", ticket);

        rd = request.getRequestDispatcher("/src/portal-admin/views/ticket/editTicket.jsp");
        rd.include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        Date date = new Date();
        Timestamp timestamp = new Timestamp(date.getTime());

        int ticketId = Integer.parseInt(request.getParameter("ticketId"));

        int responsiblePersonId = Integer.parseInt(request.getParameter("responsiblePersonId"));
        int priorityId = Integer.parseInt(request.getParameter("priorityId"));
        Timestamp updatedAt = timestamp;
        Timestamp completedAt = timestamp;
        int statusId = Integer.parseInt(request.getParameter("statusId"));
        String description = request.getParameter("description");

        Ticket ticket = new Ticket();
        ticket.setId(ticketId);
        ticket.setResponsiblePersonId(responsiblePersonId);
        ticket.setPriorityId(priorityId);
        ticket.setUpdatedAt(updatedAt);
        ticket.setCompletedAt(completedAt);
        ticket.setDescription(description);
        ticket.setStatusId(statusId);

        TicketController ticketController = new TicketController();
        ticketController.updateTicket(ticket);

        response.sendRedirect(request.getContextPath() + "/admin/tickets");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
