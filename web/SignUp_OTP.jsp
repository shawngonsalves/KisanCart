<%-- 
    Document   : SignUp_OTP
    Created on : 23 Oct, 2017, 12:24:17 PM
    Author     : Mrunal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="SignUp.css" rel="stylesheet" type="text/css"/>
        <script lang="javascript">
            function checkOTP(form, otp) {
                inputField = document.getElementById("otp").value;
                if (otp===inputField)
                    form.submit();
                else
                    alert("Invalid OTP");
            }
        </script>
    </head>
    <body onload="document.getElementById('otp').focus()">
    <center>
        <form name="signup_form" action="SignUpServlet.do" method="POST">
            <table>
                <tr>
                    <td>
                        <b> Enter OTP sent on mail: </b>
                    </td>
                    <td>
                        <input id="otp" name="otp" type="password" size="32"
                               onblur="validateExactLength(4, 4, this, document.getElementById('otp_help'))" /> <br>
                        <span id="otp_help" class="help"></span>
                    </td>
                </tr>
            </table>
            <br>
            <input type="button" value="SignUp" onclick="checkOTP(this.form, ${otp});" />            
        </form>
    </center>
</body>
</html>
