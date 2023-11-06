<%@page import="com.org.dto.Properties"%>
<%@page import="com.org.dao.PropertiesDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Complete Information</title>
<%@include file="../components/allcss.jsp"%>
</head>
<body>
	<%@include file="user_navbar.jsp"%>
	<%
	String id = request.getParameter("propertyId");
	int propertyId = Integer.parseInt(id);

	PropertiesDao dao = new PropertiesDao();
	Properties properties = dao.fetchPropertyById(propertyId);

	String image = "../property_images/" + properties.getImg();
	
	%>
	<div>
		<p class="text-primary fs-3 text-center"><%=properties.getName()%></p>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<img alt="" src=<%=image%> height="400px" width="600px">
				 <a href="view_property.jsp" class="btn btn-small btn-info mt-3">Back to Property List</a>
			</div>
			<div class="col-md-6 ">
				<span class="text-success fs-6">Price : Rs.</span>
				<%=properties.getPrice()%>
				<br> <span class="text-success fs-6">Location :</span>
				<%=properties.getLocation()%>
				<br> <br> <span class="text-success fs-6">About
					this Property :</span>
				<p>
					Description:
					<%=properties.getDescription()%></p>
				<br> <br> <br>
				<div class="container d-flex justify-content-between">
					<a href="update_property.jsp?propertyId=<%=properties.getId()%>"
						class="btn btn-small btn-primary">Update</a> <a
						href="../delete_property?propertyId=<%=properties.getId()%>"
						class="btn btn-small btn-danger">Delete</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>