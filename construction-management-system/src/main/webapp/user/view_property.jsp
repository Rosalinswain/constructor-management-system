<%@page import="com.org.dto.Properties"%>
<%@page import="java.util.List"%>
<%@page import="com.org.dao.PropertiesDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="../components/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@ include file="user_navbar.jsp"%>
	<div class="row">
		<div class="col-md-12">
			<div class="card paint-card">
				<div class="card-body">
					<p class="fs-4 fw-bold text-center text-success">Property List</p>
					<table class="table text-center">
						<thead>
							<tr>
								<th>Name</th>
								<th>Location</th>
								<th>price</th>
								<th>Mobile</th>
								<th>Full Information</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							<%
							PropertiesDao dao = new PropertiesDao();
							List<Properties> list = dao.fetchAllProperties(user);
							for (Properties p : list) {
							%>
								<tr>
									<td><%= p.getName() %></td>
									<td><%= p.getLocation() %></td>
									<td><%= p.getPrice() %></td>
									<td><%= p.getMobile() %></td>
									<td><a href="full_info.jsp?propertyId=<%=p.getId() %>" class="btn btn-small btn-success">Click Here</a> </td>
									<td><a href="update_property.jsp?propertyId=<%=p.getId() %>" class="btn btn-small btn-primary">Update</a>
										<a href="../delete_property?propertyId=<%=p.getId() %>" class="btn btn-small btn-danger">Delete</a> </td>
								</tr>
							<%
							}
							%>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>


</body>
</html>