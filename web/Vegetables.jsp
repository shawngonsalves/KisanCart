<%-- 
    Document   : Vegetables
    Created on : 25 Sep, 2017, 3:26:26 PM
    Author     : Mrunal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vegetables</title>
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
            <a href="Login.jsp" target="_blank">Login</a><BR>
            <a href="Register.jsp" target="_blank">Sign Up</a><BR>
        </div>
        <div class="right" id="right_side">
            <a href="ProdDesp/carrot.jsp" target="_blank" value="carrot"><img src="images/carrot.jpg" height=150 width=150></a>
            <a href="ProdDesp/asparagus.jsp" target="_blank" value="asparagus"><img src="images/asparagus.jpg" height=150 width=150></a>
            <a href="ProdDesp/beetroot.jsp" target="_blank" value="beetroot"><img src="images/beetroot.jpg" height=150 width=150></a>
            <a href="ProdDesp/potato.jsp" target="_blank" value="potato"><img src="images/potato.jpg" height=150 width=150></a>
            <a href="ProdDesp/raddish.jsp" target="_blank" value="raddish"><img src="images/raddish.jpg" height=150 width=150></a>
            <a href="ProdDesp/turnip.jsp" target="_blank" value="turnip"><img src="images/turnip.jpg" height=150 width=150></a>
            <a href="ProdDesp/bottle_gourd.jsp" target="_blank" value="bottle_gourd"><img src="images/bottle_gourd.jpg" height=150 width=150></a>
            <a href="ProdDesp/onion.jsp" target="_blank" value="onion"><img src="images/onion.jpg" height=150 width=150></a>
            <a href="ProdDesp/okra.jsp" target="_blank" value="okra"><img src="images/okra.jpg" height=150 width=150></a>
            <a href="ProdDesp/brinjal.jsp" target="_blank" value="brinjal"><img src="images/brinjal.jpg" height=150 width=150></a>
            <a href="ProdDesp/ginger.jsp" target="_blank" value="ginger"><img src="images/ginger.jpg" height=150 width=150></a>
            <a href="ProdDesp/broccoli.jsp" target="_blank" value="broccoli"><img src="images/broccoli.jpg" height=150 width=150></a>
            <a href="ProdDesp/brussles_sprouts.jsp" target="_blank" value="brussles_sprouts"><img src="images/brussles_sprouts.jpg" height=150 width=150></a>
            <a href="ProdDesp/cabbage.jsp" target="_blank" value="cabbage"><img src="images/cabbage.jpg" height=150 width=150></a>
            <a href="ProdDesp/squash.jsp" target="_blank" value="squash"><img src="images/squash.jpg" height=150 width=150></a>
            <a href="ProdDesp/yam.jsp" target="_blank" value="yam"><img src="images/yam.jpg" height=150 width=150></a>
            <a href="ProdDesp/cucumbers.jsp" target="_blank" value="cucumbers"><img src="images/cucumbers.jpg" height=150 width=150></a>
            <a href="ProdDesp/spinach.jsp" target="_blank" value="spinach"><img src="images/spinach.jpg" height=150 width=150></a>
            <a href="ProdDesp/cauliflower.jsp" target="_blank" value="cauliflower"><img src="images/cauliflower.jpg" height=150 width=150></a>
            <a href="ProdDesp/corn.jsp" target="_blank" value="corn"><img src="images/corn.jpg" height=150 width=150></a>
            <a href="ProdDesp/garlic.jsp" target="_blank" value="garlic"><img src="images/garlic.jpg" height=150 width=150></a>
            <a href="ProdDesp/beans.jsp" target="_blank" value="beans"><img src="images/beans.jpg" height=150 width=150></a>
            <a href="ProdDesp/tomato.jsp" target="_blank" value="tomato"><img src="images/tomato.jpg" height=150 width=150></a>
            <a href="ProdDesp/peas.jsp" target="_blank" value="peas"><img src="images/peas.jpg" height=150 width=150></a>
        </div>
    </body>
</html>
