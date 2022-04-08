<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	if(session.getAttribute("admin_Email")==null)
	{
		response.sendRedirect("adminLogin.jsp");
	}

%>


<html>
<head>
<title>Add New Flight</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div>
				<a href="#" class="navbar-brand" style="margin-left: 500px;">FlyAway An Airline Booking Portal</a>
			</div>

			
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${user != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${user == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${user != null}">
            			Edit User
            		</c:if>
						<c:if test="${user == null}">
            			Add New Flight
            		</c:if>
					</h2>
				</caption>

				<c:if test="${user != null}">
					<input type="hidden" name="id" value="<c:out value='${user.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>FLYING FROM</label> <input type="text"
						value="<c:out value='${user.FLYING_FROM}' />" class="form-control"
						name="FLYING_FROM" required="required" placeholder="eg Gwalior">
				</fieldset>

				<fieldset class="form-group">
					<label>FLYING To</label> <input type="text"
						value="<c:out value='${user.FLYING_TO}' />" class="form-control"
						name="FLYING_TO" placeholder="eg Jaisalmer">
				</fieldset>

				<fieldset class="form-group">
					<label>DEPARTURE</label> <input type="date"
						value="<c:out value='${user.DEPARTURE}' />" class="form-control"
						name="DEPARTURE">
				</fieldset>
				
				<fieldset class="form-group">
					<label>TIME</label> <input type="time"
						value="<c:out value='${user.TIME}' />" class="form-control"
						name="TIME" required="required" placeholder="eg 17:05">
				</fieldset>
				
				<fieldset class="form-group">
					<label>TICKET PRICE</label> <input type="text"
						value="<c:out value='${user.TICKET_PRICE}' />" class="form-control"
						name="TICKET_PRICE" required="required" placeholder="Price">
				</fieldset>

				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
