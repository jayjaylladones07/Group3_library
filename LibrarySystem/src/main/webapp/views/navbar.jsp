<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<section id="home">
	<!-- Modal -->
	<jsp:include page="register.jsp"></jsp:include>
	<jsp:include page="login.jsp"></jsp:include>

	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Library System</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span></span> <span></span> <span></span>
			</button>
			<div class="collapse navbar-collapse justify-content-between"
				id="navbarSupportedContent">
				<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active" href="#"
						data-bs-toggle="modal" data-bs-target="#registerModal">Sign up</a>
					</li>
				</ul>
				<form class="d-flex">
					<button class="btn btn-outline-secondary" data-bs-toggle="modal"
						data-bs-target="#loginModal" type="button">Sign in</button>
				</form>
			</div>
		</div>
	</nav>

	<div class="info-text">
		<h1>Library Management System</h1>
		<p>Making website is now one of the easiest thing in the world.
			You just need to learn HTML, CSS, Javascript ad you are good to go.</p>

	</div>

</section>






