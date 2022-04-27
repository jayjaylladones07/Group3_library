<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<div class="row">
	<div class="col-md-12">
		<div class="modal fade" id="registerModal">
			<div class="modal-dialog modal-md">
				<div class="modal-content">
					<div class="modal-header">
						<h1>Sign up</h1>
					</div>
					<form action="${pageContext.request.contextPath}/"
						method="post">
						<div class="modal-body">

							<div class="form-floating mb-4">
								<input type="text" name="name" class="form-control" id="floatingInput"
									placeholder="Enter name" required> <label
									for="floatingInput">Name</label>
							</div>
							<div class="form-floating mb-4">
								<input type="email" name="email" class="form-control" id="floatingInput"
									placeholder="name@example.com" required> <label
									for="floatingInput">Email address</label>
							</div>
							<div class="form-floating mb-4">
								<input type="text" name="username" class="form-control" id="floatingInput"
									placeholder="Enter Username" required> <label
									for="floatingInput">Username</label>
							</div>
							<div class="form-floating mb-4">
								<input type="password" name="password" class="form-control"
									id="floatingPassword" placeholder="Password" required>
								<label for="floatingPassword">Password</label>
							</div>
							<div class="form-floating mb-4">
								<input type="password" name="password2" class="form-control"
									id="floatingPassword" placeholder="Password" required>
								<label for="floatingPassword">Confirm Password</label>
							</div>


						</div>
						<div class="modal-footer justify-content-between">
							<input class="btn btn-default btn-outline-secondary"
								data-bs-dismiss="modal" value="close"> <input
								type="submit" class="btn btn-default btn-outline-secondary" value="Register">
						</div>
					</form>
				</div>

			</div>
		</div>
	</div>
</div>
</div>