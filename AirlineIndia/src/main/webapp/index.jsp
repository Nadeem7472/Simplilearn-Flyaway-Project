<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
	if(session.getAttribute("userEmail")!=null)
	{
		response.sendRedirect("listFlight");
	}

%>

<!DOCTYPE html>
<html lang="en">
    <head>
		<meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <title>User Login or Sign Up</title>
        <meta name="description" content="Custom Login Form Styling with CSS3" />
        <meta name="keywords" content="css3, login, form, custom, input, submit, button, html5, placeholder" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="indexColorlib/css/style.css" />
		<script src="js/modernizr.custom.63321.js"></script>
		<!--[if lte IE 7]><style>.main{display:none;} .support-note .note-ie{display:block;}</style><![endif]-->
		<style>
			@import url(http://fonts.googleapis.com/css?family=Ubuntu:400,700);
			body {
				background: #563c55 url(indexColorlib/images/blurred.jpg) no-repeat center top;
				-webkit-background-size: cover;
				-moz-background-size: cover;
				background-size: cover;
			}
			.container > header h1,
			.container > header h2 {
				color: #fff;
				text-shadow: 0 1px 1px rgba(0,0,0,0.7);
			}
		</style>
    </head>
    <body>
    				<p class="clearfix">
				        <a href="adminLogin.jsp" style="float: right;font-size: 35px;position: unset;margin-top: 32px;margin-right: 194px;color: white;">Admin Login</a>
				    </p> 
        <div class="container">
		
	
			<header>
			
				<h1>FlyAway An <strong>Airline Booking </strong>Portal</h1>
				<h2>Created By Nadeem email:-nadeem01107@gmail.com</h2>
				
				

				
			</header>
			
			<section class="main">
				<form class="form-3" action="UserLoginServlet" method="post">
				
				    <p class="clearfix">
				        <label for="login">Email</label>
				        <input type="text" name="userEmail" id="login" placeholder="Enter Email" required="required">
				    </p>
				    <p class="clearfix">
				        <label for="password">Password</label>
				        <input type="password" name="password" id="password" placeholder="Password" required="required"> 
				    </p>
				    <p class="clearfix newuser">
				       <a href="ragistration.jsp" class="clearfix" style="color: red;">Create New Account</a>
				    </p>
				    <p class="clearfix">
				        <input type="checkbox" name="remember" id="remember">
				        <label for="remember">Remember me</label>
				    </p>
				    <p class="clearfix">
				        <input type="submit" name="submit" value="Sign in">
				    </p>       
				
				</form>€‹
			</section>
        </div>
       
    </body>
</html>