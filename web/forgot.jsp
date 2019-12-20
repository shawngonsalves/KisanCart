<%-- 
    Document   : forgot
    Created on : 11 Oct, 2017, 10:02:20 AM
    Author     : Mrunal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgot Password</title>
        
    </head>
    <body>
        <form action="LoginServlet.do" method="POST">
            <center>
                <fieldset>
                    <legend>Forgot Password</legend>
                    <table>
                        <tr>
                            <td>Enter your Email id:</td>
                            <td><input type="email" name="email" placeholder="example@example.com"/></td>
                        </tr>
                        <tr>
                        <input type="button" value="Get OTP" onclick="location.href = 'SignUp_OTP.jsp'" />
                        </tr>
                </fieldset>
            </center>
        </form>
    </body>
</html>
