<%@page import="model.BaseDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Upload File</title>
    </head>
    
    <body>
        <form method="post" action="UploadFileController.do" enctype="multipart/form-data">
            <center>
                <table border="1" width="25%" cellpadding="5">
                    <thead> 
                            <th colspan="3">Upload File</th>        
                    </thead>
                    <tbody>
                        <tr>    
                            <td>Name of vegetable : </td>
                            <td><input type="text" name="vname" size="30"></td>
                        </tr>
                        <tr>    
                            <td>Price : </td>
                            <td><input type="text" name="vprice" size="30"></td>
                        </tr>
                        <tr>    
                            <td>Quantity : </td>
                            <td><input type="text" name="vquant" size="30"></td>
                        </tr>
                        <tr>
                            <td>Upload image :</td>
                            <td><input type="file" name="file_uploaded" /></td>
                        </tr>
                        <tr>
                            <td colspan="3"><center><input type="submit" value="Upload"></center></td>
                        </tr>
                    </tbody>             
                </table>
            </center>
        </form>
        
        <br><br>
        
       
    </body>
</html>