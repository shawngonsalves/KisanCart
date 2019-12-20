/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.enterprise.deploy.shared.ModuleType.EJB.MailSender;
import javax.servlet.RequestDispatcher;
import model.CustomerLogin;

@WebServlet(name = "OTPMailDispatcher", urlPatterns = {"/OTPMailDispatcher"})
public class OTPMailDispatcherServlet extends HttpServlet {
    @EJB
    private MailSender mailSender;
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
        
        String toEmail = request.getParameter("email");
        String subject = "OTP for Amazine Registration";
        String message = "OTP for registration is: ";

        String fromEmail = "myjavamanual@gmail.com";
        String username = "myjavamanual";
        String password = "zhop@ihateu";
            
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
            CustomerLogin c;
            c = CustomerLogin.populateData(request, response, false);
            request.setAttribute("customer", c);
            
            int otp = mailSender.generateOTP();
            message += Integer.toString(otp);
            mailSender.sendEmail(fromEmail, username, password, toEmail, subject, message);
            
            request.setAttribute("otp", otp);
            RequestDispatcher view = request.getRequestDispatcher("SignUp_OTP.jsp");
            view.forward(request, response);
        }
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
