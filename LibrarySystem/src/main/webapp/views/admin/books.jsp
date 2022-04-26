<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">




<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/sidebar_style.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/books_style.css">
</head>
<body>


	<div class="wrapper">
		<nav id="sidebar">
			<div class="sidebar-header">
				<h3>Library System</h3>
			</div>
			<div class="nav-links">
				<li class=""><a href="index_admin.jsp">Dashboard</a></li>
				<li class=""><a href="#">Books</a></li>
				<li class=""><a href="member.jsp">Member</a></li>
				<li class=""><a href="#homesubmenu">Issue</a></li>
				<li class=""><a href="#homesubmenu">Return</a></li>
				<li class=""><a href="#homesubmenu">View Order</a></li>
				<li class=""><a href="#homesubmenu">Logout</a></li>
			</div>
		</nav>
	</div>

	<div class="admin-table">

		<div class="forButtons d-flex p-5 mt-5 justify-content-between ">
			<div class="input-group mb-3">
				<input type="text" class="form-control"
					placeholder="Recipient's username"
					aria-label="Recipient's username" aria-describedby="button-addon2">
				<button class="btn btn-outline-secondary" type="button"
					id="button-addon2">Search</button>
			</div>
			<div class="input-group mb-3 ms-5">
				<button type="button" class="btn btn-success" data-bs-toggle="modal"
					data-bs-target="#addModal">Add Books</button>
			</div>
		</div>


		<div class="forTable p-5">
			<table class="table table-bordered">
				<thead>
					<tr>
						<th scope="col">Book Id</th>
						<th scope="col">Title</th>
						<th scope="col">Author</th>
						<th scope="col">Publisher</th>
						<th scope="col">Category</th>
						<th scope="col">Quantity</th>
						<th scope="col">Action</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">1</th>
						<td>Mark</td>
						<td>Otto</td>
						<td>@mdo</td>
						<td>@mdo</td>
						<td>@mdo</td>
						<td class="d-flex justify-content-around"><a href="#"
							type="button" data-bs-toggle="modal" data-bs-target="#editModal">Edit</a>
							<a href="#">Delete</a></td>
					</tr>
					<tr>
						<th scope="row">2</th>
						<td>Jacob</td>
						<td>Thornton</td>
						<td>@fat</td>
						<td>@mdo</td>
						<td>@mdo</td>
						<td class="d-flex justify-content-around"><a type="button"
							data-bs-toggle="modal" data-bs-target="#editModal">Edit</a> <a
							href="#">Delete</a></td>
					</tr>

				</tbody>
			</table>
		</div>

	</div>

	<!-- Modal add-->
	<div class="modal" tabindex="-1" id="addModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Add Books</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form>

						<div class="mb-3">
							<label for="exampleEdit" class="form-label">Title</label> <input
								type="text" class="form-control" id="exampleEdit">
						</div>

						<div class="mb-3">
							<label for="exampleEdit" class="form-label">Author</label> <input
								type="text" class="form-control" id="exampleEdit">
						</div>

						<div class="mb-3">
							<label for="exampleEdit" class="form-label">Publisher</label> <input
								type="text" class="form-control" id="exampleEdit">
						</div>

						<div class="mb-3">
							<label for="exampleEdit" class="form-label">Category</label> <input
								type="text" class="form-control" id="exampleEdit">
						</div>

						<div class="mb-3">
							<label for="exampleEdit" class="form-label">Quantity</label> <input
								type="text" class="form-control" id="exampleEdit">
						</div>

					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Add Books</button>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal edit-->

	<div class="modal" tabindex="-1" id="editModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Edit Books</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form>

						<div class="mb-3">
							<label for="exampleEdit" class="form-label">Books ID</label> <input
								type="text" class="form-control" id="exampleEdit">
						</div>

						<div class="mb-3">
							<label for="exampleEdit" class="form-label">Title</label> <input
								type="text" class="form-control" id="exampleEdit">
						</div>

						<div class="mb-3">
							<label for="exampleEdit" class="form-label">Author</label> <input
								type="text" class="form-control" id="exampleEdit">
						</div>

						<div class="mb-3">
							<label for="exampleEdit" class="form-label">Publisher</label> <input
								type="text" class="form-control" id="exampleEdit">
						</div>

						<div class="mb-3">
							<label for="exampleEdit" class="form-label">Category</label> <input
								type="text" class="form-control" id="exampleEdit">
						</div>

						<div class="mb-3">
							<label for="exampleEdit" class="form-label">Quantity</label> <input
								type="text" class="form-control" id="exampleEdit">
						</div>

					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
		integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
		integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
		crossorigin="anonymous"></script>



</body>
</html>