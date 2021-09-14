package servlet.admin.ticket;

import controller.TicketController;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Ticket;
import model.TicketComment;

public class ViewTicket extends HttpServlet {

    RequestDispatcher rd = null;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        rd = request.getRequestDispatcher("/src/portal-admin/views/ticket/viewTicket.jsp");
        rd.include(request, response);
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
        Ticket ticket = ticketController.findTicketById(ticketId);

        session.setAttribute("ticket", ticket);

        List<TicketComment> comments = ticketController.listTiketCommentsByTicketId(ticketId);
        session.setAttribute("LIST_ALL_COMMENTS", comments);

        rd = request.getRequestDispatcher("/src/portal-admin/views/ticket/viewTicket.jsp");
        rd.include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
