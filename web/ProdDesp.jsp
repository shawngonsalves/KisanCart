<%-- 
    Document   : ProdDesp
    Created on : 25 Sep, 2017, 3:44:26 PM
    Author     : Mrunal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Description</title>
        <style>
            h1 { color: red;}
            h2 { color: purple;}
            h3 { color: yellow;}
            .top { background-color: darkblue; text-align: center;}
            .left { background-color: lightgreen; width:200px; height:80vh; float:left}
            .right { background-image: url("images/vegetables.jpg"); background-repeat: no-repeat; background-size: 100%; height:80vh; opacity: 1}
        </style>
    </head>
    <body bgcolor="000FFFFF" link="green" alink="purple" vlink="yellow">
        <div class="top">
            <img src="images/logo.jpg" align="left" height=82 width=120>
            <a href="Cart.jsp" target="_blank"><img src="images/cart.jpg" align="right" height=82 width=82></a>
            <h1><b><u>KISAN CART</u></b></h1>
            <h3><i><b>Buy Fresh Eat Fresh</b></i></h3>
        </div>
        <div class="left">
            <marquee><h2>Welcome To Kisan Cart</h2></marquee>
            <a href="about.jsp" target="block">About Us</a><BR>
            <a href="contact.jsp" target="_blank">Contact Us</a><BR>
            <a href="Login.jsp" target="_blank">Login or Sign Up</a><BR>
        </div>
        <div class="right" id="right_side">
            <h1><center>PRODUCT DESCRIPTION</center></h1>
            <img src="images/asparagus.jpg" align="center">
            <h2> The rate per kg is 80Rs </h2>
            <form action="AddToCartServlet.do" method="POST">
                <input type="label" value="Carrots" name="vname" readonly="true"><br>
               Enter Quantity: <input type="text" name="qty">
               <input type="submit" value="Add to cart">
            </form>
        </div>
    </body>
</html>
