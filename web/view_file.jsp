
<%@page import="java.util.logging.Logger"%>
<%@page import="model.BaseDAO"%>
<%@page import="java.util.logging.Level"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View File</title>
    </head>
    <body>
        
        <%  
            String vname=(request.getParameter("vname"));
            int vprice=Integer.parseInt(request.getParameter("vprice"));
            int vquant=Integer.parseInt(request.getParameter("vquant"));
            
            
            Blob file = null;
            byte[ ] fileData = null ;

            try
            {    
                BaseDAO dbconn=new BaseDAO();
                Connection conn= dbconn.getConnection();
            
                String sqlString = "SELECT vimage FROM VEGETABLES WHERE vname=vname,price=vprice,quantity=vquant";
                Statement myStatement = conn.createStatement();
                
                ResultSet rs=myStatement.executeQuery(sqlString);
                
                if (rs.next()) 
                {
                    file = rs.getBlob("file");
                    fileData = file.getBytes(1,(int)file.length());
                } else 
                {
                    out.println("file not found!");
                    return;
                }
                
                response.setContentType("images/jpg");
                response.setHeader("Content-Disposition", "inline");
                response.setContentLength(fileData.length);
                
                OutputStream output = response.getOutputStream();
                output.write(fileData);
                
                output.flush();
                
            } catch (SQLException ex) {Logger.getLogger(Logger.class.getName()).log(Level.SEVERE, null, ex);} 
        %>
        
        <br><br>
        <a href="index.html">Go to Main Page...</a>        
                
        
    </body>
</html>