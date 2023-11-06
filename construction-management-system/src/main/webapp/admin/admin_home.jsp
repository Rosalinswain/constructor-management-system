<%@page import="com.org.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="../components/allcss.jsp" %>
</head>
<body>
<%@ include file="admin_navbar.jsp" %>
<%
	User str = (User) session.getAttribute("adminObj");
	if (str == null) {
		response.sendRedirect("../Admin_login.jsp");
	}
	%>

	<h1 class="text-center text-primary">Admin Dashboard</h1>

	

</body>
</html>