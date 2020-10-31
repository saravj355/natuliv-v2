/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.auth;

import controller.Auth;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.User;

/**
 *
 * @author sarav
 */
@WebServlet(name = "Authentication", urlPatterns = {"/auth/login"})
public class Authentication extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
                
        RequestDispatcher rd = null;

        HttpSession session = request.getSession(true);
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");
                       
        if (email.isEmpty() || password.isEmpty()){
           request.setAttribute("errorMessage","Por favor rellene todos los campos.");
           getServletContext().
                   getRequestDispatcher("/auth/login.jsp")
                   .forward(request,response);           
           return;
        }  
        
        User user = Auth.login(email, password);
        
        // user not found. redirect to index page
        if (user == null){
            request.setAttribute("errorMessage","La contraseña o el correo electrónico son incorrectos ");
            getServletContext().
                   getRequestDispatcher("/auth/login.jsp")
                   .forward(request,response);       
            return;
        }
        
        session.setAttribute("name",user.getName());
        rd = request.getRequestDispatcher("/app/index.jsp");
        rd.forward(request,response);
        
      
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
