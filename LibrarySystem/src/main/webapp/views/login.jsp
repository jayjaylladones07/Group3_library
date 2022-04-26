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
						<div class="modal-body">
							<form action="${pageContext.request.contextPath}/"
								method="post">
								<div class="form-floating mb-4">
									<input type="text" class="form-control" id="floatingInput"
										placeholder="Enter Username" required> <label
										for="floatingInput">Username</label>
								</div>
								<div class="form-floating mb-4">
									<input type="password" class="form-control"
										id="floatingPassword" placeholder="Password" required>
									<label for="floatingPassword">Password</label>
								</div>
							</form>
						</div>
						<div class="modal-footer justify-content-between">
							<input class="btn btn-default btn-outline-secondary"
								data-bs-dismiss="modal" value="close"> <input
								class="btn btn-default btn-outline-secondary" value="Login">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>