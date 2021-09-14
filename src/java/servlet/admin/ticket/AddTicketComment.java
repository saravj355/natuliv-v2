package servlet.admin.ticket;

import controller.TicketController;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.TicketComment;
import model.User;

public class AddTicketComment extends HttpServlet {

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

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        Date date = new Date();
        Timestamp timestamp = new Timestamp(date.getTime());

        User user = (User) session.getAttribute("user");

        int ticketId = Integer.parseInt(request.getParameter("ticketId"));

        int userId = user.getId();
        String description = request.getParameter("description");
        Timestamp createdAt = timestamp;

        TicketComment ticketComment = new TicketComment();
        ticketComment.setTicketId(ticketId);
        ticketComment.setCreatedAt(createdAt);
        ticketComment.setDescription(description);
        ticketComment.setUserId(userId);

        TicketController ticketController = new TicketController();
        ticketController.createTicketComment(ticketComment);

        response.sendRedirect(request.getContextPath() + "/admin/tickets/view?id=" + ticketId);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
