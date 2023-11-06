<%@page import="com.org.dto.User"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-success">
	<div class="container-fluid">
		<a class="navbar-brand" href="index.jsp">DreamHouse</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">

				<%
				User user  = (User) session.getAttribute("user");

				/* if (user != null) { */
				%>
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="add_property.jsp"> <i
						class="fa-regular fa-calendar-check"></i>Add Property
				</a></li>
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="view_property.jsp"><i
						class="fa-regular fa-user"></i>View Property</a></li>

				<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-bs-toggle="dropdown" aria-expanded="false">
						<%=user.getName()%>
				</a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
						<li><a class="dropdown-item" href="../user_logout">Logout</a></li>
						<li><hr class="dropdown-divider"></li>
					</ul></li>
				<%
				/* } */
				%>
			</ul>
		</div>
	</div>
</nav>