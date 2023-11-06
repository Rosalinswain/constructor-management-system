<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Property</title>
<%@ include file="../components/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@ include file="user_navbar.jsp"%>
	<div class="container p-3">
		<div class="row">

			<div class="col-md-8 offset-md-2">
				<div class="card paint-card">
					<div class="card-body">
						<p class="text-center fs-3">Add Property</p>
						<form action="../add_property" class="row g-3" method="post"
							enctype="multipart/form-data">
							<input type="hidden" name="id" value="">
							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Name</label> <input
									type="text" required class="form-control" name="name">
							</div>
							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Picture</label> <input
									type="file" required class="form-control" name="image">
							</div>
							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Location</label> <input
									type="text" required class="form-control" name="location">
							</div>
							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Price</label> <input
									type="text" required class="form-control" name="price">
							</div>
							<div class="col-md-12">
								<label for="inputEmail4" class="form-label">Mobile</label> <input
									type="text" required class="form-control" name="phone">
							</div>

							<div class="col-md-12">
								<label for="">Description</label>
								<textarea name="description" class="form-control" cols="" rows="3"></textarea>
							</div>

							<button class="col-md-6 offset-md-3 btn btn-primary">
								Submit</button>
						</form>
					</div>

				</div>

			</div>

		</div>
	</div>



</body>
</html>