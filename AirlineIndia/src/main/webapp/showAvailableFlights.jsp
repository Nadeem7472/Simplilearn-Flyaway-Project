<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>

<%
 if (session.getAttribute("userEmail")==null)
	{
		response.sendRedirect("http://localhost:8181/AirlineIndia/");
	}
%>


<%!
String userName,password,url,driver;	

PreparedStatement pst;
ServletContext context;
Connection con;
public String tracked_user;

%>

<%
	
	context = config.getServletContext();
	
	userName = context.getInitParameter("userName");
	password = context.getInitParameter("password");
	url = context.getInitParameter("url");
	driver = context.getInitParameter("driver");
	
	con = DriverManager.getConnection(url, userName, password);
	
	String sessionId = (String)session.getAttribute("userEmail");
	
	try
	{
		pst = con.prepareStatement("select USER_NAME from userflyaway where USER_EMAIL='"+sessionId+"'");
		ResultSet rs = 	pst.executeQuery();
		
		if(rs.next())
		{
			tracked_user = rs.getString("user_name");
			
		}
	}
	
	catch(SQLException e)
	{
		e.printStackTrace();
	}

%>

<html>
<head>
<title>Available Flights</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>


	<h2 style="position: absolute;height: 42px;margin-top: 76px;margin-left: 136px;background-color: #ffe300;width: 218px;text-align: center;border-radius: 29px;">Hi,<% out.println(tracked_user); %></h2>
		
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">

			<div>
				<a href="#" class="navbar-brand" style="margin-left: 500px;">FlyAway
					An Airline Booking Portal </a>

			</div>

		</nav>
	</header>
	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">List of Flights</h3>
			<a href="user-logout.jsp"
				style="font-size: 35px; position: absolute; margin-left: 896px; margin-top: -52px;">
				Logout</a>
			<hr>

			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>Flying From</th>
						<th>Flying To</th>
						<th>Departure</th>
						<th>Time</th>
						<th>Ticket Price</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<!--   for (Todo todo: todos) {  -->
					<c:forEach var="user" items="${listUser}">


						<tr>
							<td><c:out value="${user.id}" /></td>
							<td><c:out value="${user.FLYING_FROM}" /></td>
							<td><c:out value="${user.FLYING_TO}" /></td>
							<td><c:out value="${user.DEPARTURE}" /></td>


							<c:set var="time" value="${user.TIME}" />
							<c:set var="flighttime" value="${fn:substring(time,0,2)}" />

							<c:if test="${flighttime<=12}">
								<td>${time}&nbsp;AM</td>
							</c:if>

							<c:if test="${flighttime>12}">
								<td>${time}&nbsp;PM</td>

							</c:if>
							<td>₹&nbsp;<c:out value="${user.TICKET_PRICE}" /></td>
							<td><a href="flight-booked.jsp">Book</a></td>

						</tr>
					</c:forEach>
					<!-- } -->
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>
