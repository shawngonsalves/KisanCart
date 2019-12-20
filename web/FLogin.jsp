<%-- 
    Document   : FLogin
    Created on : 25 Sep, 2017, 10:49:15 AM
    Author     : Mrunal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script type="text/javascript">
	    function validateRegEx(regex, input, helpText, helpMessage)
	    {// See if the input data validates OK
		if (!regex.test(input))
		{// The data is invalid, so set the help message and return false
		    if (helpText != null)
			helpText.innerHTML = helpMessage;
		    return false;
		}
		else
		{// The data is OK, so clear the help message and return true
		    if (helpText != null)
			helpText.innerHTML = "";
		    return true;
		}
	    }

	    function validateNonEmpty(inputField, helpText)
	    {// See if the input value contains any text
		return validateRegEx(/.+/, inputField.value, helpText, "Please enter a value.");
	    }

	    function validateLength(minLength, maxLength, inputField, helpText)
	    {// See if the input value contains at least minLength but no more than maxLength characters
		return validateRegEx(new RegExp("^.{" + minLength + "," + maxLength + "}$"), inputField.value, helpText, "Please enter a value " + minLength + " to " + maxLength + " characters in length.");
	    }
      
	    function validateEmail(inputField, helpText)
	    {// First see if the input value contains data
		if (!validateNonEmpty(inputField, helpText))
		    return false;
        	// Then see if the input value is an email address
        	return validateRegEx(/^[\w\.-_\+]+@[\w-]+(\.\w{2,3})+$/, inputField.value, helpText, "Please enter an email address (for example, johndoe@acme.com).");
	    }

	    function validatePassword(inputField, helpText)
	    {// First see if the input value contains data
		if (!validateNonEmpty(inputField, helpText))
		    return false;
		// Then see if the input value is an email address
		return validateRegEx(/^\d\w{5,7}$, inputField.value, helpText, "Please enter an email address (for example, johndoe@acme.com).");
	    }

	    function submitForm()
	    {	
		confirm("Do you want to continue?");
	    }
    </script>
    </head>
    <body>
        <form action="LoginServlet1.do" method="POST">
            <center>
                <fieldset>
                    <legend>LOGIN</legend>
            <table>
                    <tr>
                        <td>Enter Email-id</td>
                        <td><input type="text" name="eid"></td>
                    </tr>
                    <tr>
                        <td>Enter Password</td>
                        <td><input type="password" name="password"></td>
                    </tr>
                    <tr>
                        <td><input type="submit" name="submit" value="Login"></td>
                        <td><input type="reset"name="reset" value="Clear"></td>
                    </tr>
                    <tr>
                        <td><a href="forgot.jsp">Forgot Password?</a></td>
                        <td><a href="Register.jsp">Sign Up</a></td>
                    </tr>
                </fieldset>
                </centre>
            </table>
        </form>
    </body>
</html>