<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<div class="row">
	<div class="col-md-12">
		<div class="modal fade" id="loginModal">
			<div class="modal-dialog modal-md">
				<div class="modal-content">
					<div class="modal-header">
						<h1>Sign in</h1>
					</div>
					<form action="${pageContext.request.contextPath}/login"
							method="post">
					<div class="modal-body">
						
							<div class="form-floating mb-4">
								<input type="text" class="form-control" id="floatingInput"
									name="username" placeholder="Enter Username" required>
								<label for="floatingInput">Username</label>
							</div>
							<div class="form-floating mb-4">
								<input type="password" class="form-control"
									id="floatingPassword" name="password" placeholder="Password"
									required> <label for="floatingPassword">Password</label>
							</div>

						
					</div>
					<div class="modal-footer justify-content-between">
					
						<button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
						<button type="submit" class="btn btn-danger">Submit</button>
						
							
					</div>
					
				</form>
					
				</div>
			</div>
		</div>
	</div>
</div>
</div>