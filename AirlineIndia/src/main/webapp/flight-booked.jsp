<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flight Booked Successfully</title>
</head>
<body>


	
	<c:set var="time"><%= Math.random() %></c:set>
	<c:set var="flighttime" value="${fn:substring(time,2,20)}" />

		




	<h1 style="color: green; font-style: italic; text-align: center;">Flight
		Booked Successfully :-)</h1>
	<br>
	<h2 style="color: red; font-style: italic; text-align: center;">
		Reference Id : ${flighttime}
	</h2>
</body>
</html>