/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.BaseDAO;
import model.Register;
import model.RegisterDAO;


/**
 *
 * @author Mrunal
 */
public class RegisterServlet1 extends HttpServlet {

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
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) 
        {
            String cemail=request.getParameter("email");
            String cpassword=request.getParameter("psw");
            String ccpassword=request.getParameter("cpsw");
            String ctelephone=request.getParameter("tel");
            String cadd=request.getParameter("add");
            
            Register l=new Register();
            l.setEmail(cemail);
            l.setPassword(cpassword);
            l.setContact(ctelephone);
            l.setAddress(cadd);
             
             //RegisterDAO ldao=new RegisterDAO();
             //ldao.insertInfo(l);
             BaseDAO dbconn=new BaseDAO();
                    Connection conn= dbconn.getConnection();
                    
                    String sql = "INSERT INTO CUSTOMER (ccontact, cemail, caddress, cpassword) values (?, ?, ?, ?)";
                    PreparedStatement statement = conn.prepareStatement(sql);
                    statement.setString(1, ctelephone);
                    statement.setString(2, cemail);
                    statement.setString(3, cadd);
                    statement.setString(4, cpassword);
                    int row = statement.executeUpdate();
                    if (row > 0) 
                    {
                        out.println("File uploaded!!!");
                        
                        conn.close();
                        
                        RequestDispatcher rs = request.getRequestDispatcher("upload_form.jsp");
                        rs.include(request, response);
                    }
                    else
                    {
                        out.println("Couldn't upload your file!!!");
                        
                        conn.close();
                        
                        RequestDispatcher rs = request.getRequestDispatcher("upload_form.jsp");
                        rs.include(request, response);
                    }    

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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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