<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<%
	if (session.getAttribute("admin_Email")!= null) {
	
		response.sendRedirect("list");
	}

%>




<!DOCTYPE html>
<html lang="en">
<head>
	<title>Admin Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="adminColorlib/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="adminColorlib/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="adminColorlib/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="adminColorlib/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="adminColorlib/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="adminColorlib/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="adminColorlib/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="adminColorlib/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="adminColorlib/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="adminColorlib/css/util.css">
	<link rel="stylesheet" type="text/css" href="adminColorlib/css/main.css">
<!--===============================================================================================-->
	
	<style type="text/css">
	
		a
		{
			color: blue;
			font-size: 15px;
			
		}
		a:hover
		{
			font-size:18px;
			color: red;
			
		}	
	
	</style>

</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('adminColorlib/images/bg-01.jpg');">
			<div class="wrap-login100 p-t-30 p-b-50">
				<span class="login100-form-title p-b-41">
					Admin Login
				</span>
				<form class="login100-form validate-form p-b-33 p-t-5" action="AdminLoginServlet" method="post">

					<div class="wrap-input100 validate-input" data-validate = "Enter username">
						<input class="input100" type="email" name="admin_Email" placeholder="Email">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<input class="input100" type="password" name="admin_Password" placeholder="Password">
						<span class="focus-input100" data-placeholder="&#xe80f;"></span>
					</div>
						
					<div class="container-login100-form-btn m-t-32">
						<a href="forgotPassword.jsp">Forgotten password?</a>
					</div>
					<div class="container-login100-form-btn m-t-32">
						<button class="login100-form-btn">
							Login
						</button>
					</div>

				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="adminColorlib/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="adminColorlib/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="adminColorlib/vendor/bootstrap/js/popper.js"></script>
	<script src="adminColorlib/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="adminColorlib/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="adminColorlib/vendor/daterangepicker/moment.min.js"></script>
	<script src="adminColorlib/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="adminColorlib/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="adminColorlib/js/main.js"></script>

</body>
</html>