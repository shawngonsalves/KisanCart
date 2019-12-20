<%-- 
    Document   : Register1
    Created on : 14 Oct, 2017, 6:52:12 AM
    Author     : Mrunal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="register.css">

        <script type="text/javascript">
            function validate()
            {
                var em = document.getElementById("email").value.indexOf("@");
                var pass = document.getElementById("psw").value;
                var cpass = document.getElementById("cpsw").value;
                var fname = document.getElementById("uname").value;
                var cno = document.getElementById("cno").value;
                submitOK = "true";

                if (pass !== cpass)
                {
                    alert("Password not matching");
                    submitOK = "false";
                }

                if (fname.length > 15)
                {
                    alert("The name should have less than 15 characters");
                    submitOK = "false";
                }
                if (cno.length > 10)
                {
                    alert("The contact number should have less than 10 characters");
                    submitOK = "false";
                }

                if (em === -1)
                {
                    alert("email id is not valid!");
                    submitOK = "false";
                }
                if (submitOK === "false")
                {
                    return false;
                }
            }
        </script>
    </head>
    <form action="RegisterServlet1.do" method="post" enctype="text" onsubmit="return validate()">
        <div class="container">
            <label><b>Email:</b></label>
            <input type="email" placeholder="Enter Email Address" name="email" id="email" required></br>

            <label><b>Password:</b></label>
            <input type="password" placeholder="Enter Password" name="psw" id="psw" required></br>

            <label><b>Confirm Password:</b></label>
            <input type="password" placeholder="Re-Enter Password" name="cpsw" id="cpsw" required></br>
            <label><b>Contact Number:</b></label>
            <input type="tel" placeholder="Enter contact number" name="tel" id="tel" required></br>

            

            <label><b>Address:</b></label>
            <textarea rows="5" cols="60" placeholder="Enter your Address.." name="add" id="add" required></textarea></br>
            <input type="checkbox" checked="checked"> Remember me
            <button type="submit">Submit</button>	<button type="reset">Reset</button></br>
        </div>
    </form>
</html>
