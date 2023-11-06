<%@page import="com.org.dto.Properties"%>
<%@page import="com.org.dao.PropertiesDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="../components/allcss.jsp"%>
</head>
<body>
	<%@ include file="user_navbar.jsp"%>
	<%
	String id = request.getParameter("propertyId");
	int propertyId = Integer.parseInt(id);

	PropertiesDao dao = new PropertiesDao();
	Properties properties = dao.fetchPropertyById(propertyId);

	
	%>
	<div class="container p-3">
		<div class="row">

			<div class="col-md-8 offset-md-2">
				<div class="card paint-card">
					<div class="card-body">
						<p class="text-center fs-3">Update Property</p>
						<form action="../update_property" class="row g-3" method="post" >
							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Name</label> <input
									type="text" required class="form-control" name="name" value=<%=properties.getName()%>>
							</div>
							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Location</label> 
								<input type="text" required class="form-control" name="location" value=<%=properties.getLocation()%> >
							</div>
							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Price</label> <input
									type="text" required class="form-control" name="price" value=<%=properties.getPrice() %>>
							</div>
							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Mobile</label> <input
									type="text" required class="form-control" name="phone" value=<%=properties.getMobile() %>>
							</div>

							<div class="col-md-12">
								<label for="">Description</label>
								<textarea name="description" class="form-control" cols=""
									rows="3"></textarea>
							</div>
							<input type="hidden" name="id" value=<%=properties.getId() %>>
							<button class="col-md-6 offset-md-3 btn btn-success">
								Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>