<%-- 
    Document   : Login
    Created on : 25 Sep, 2017, 9:58:35 AM
    Author     : Mrunal
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="CLogin.jsp" method="POST">
            <center>
                <fieldset>
                    <legend>Login as CUSTOMER or FARMER</legend>
                    <input type="button" name="character" onclick="location.href='CLogin.jsp'" value="Customer" />&nbsp;
                    <input type="button" name="character" onclick="location.href='FLogin.jsp'" value="Farmer" /><BR>
                </fieldset>
            </centre>
        </form>
    </body>
</html>
