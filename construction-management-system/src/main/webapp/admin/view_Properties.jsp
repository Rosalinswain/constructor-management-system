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
	<%@ include file="admin_navbar.jsp"%>
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
								<th>image</th>
								<th>description</th>
							</tr>
						</thead>
						<tbody>
							<%
							PropertiesDao dao = new PropertiesDao();
							List<Properties> list = dao.fetchAllProperties();
							for (Properties p : list) {
							%>
								<tr>
									<td><%= p.getName() %></td>
									<td><%= p.getLocation() %></td>
									<td><%= p.getPrice() %></td>
									<td><%= p.getMobile() %></td>
									<td><%String img =  "../property_images/"+p.getImg(); 
									%>
									<a href="view_image.jsp?id=<%= p.getId() %>">	<img alt="" src="<%= img %>" height="60px" width="60px">
									</a></td>
									
									<td><%=p.getDescription() %></td>
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