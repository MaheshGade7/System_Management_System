<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Medi Home Navbar</title>
<!-- Bootstrap CSS -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
.navbar-custom {
	background-color: #28a745; /* Bootstrap's success color */
	color: white;
}

.navbar-custom .navbar-nav .nav-link {
	color: white;
}

.navbar-custom .navbar-brand {
	color: white;
	font-weight: bold;
}

.navbar-custom .navbar-nav .nav-link:hover {
	color: #c3e6cb; /* Lighten color on hover */
}

.navbar-custom .dropdown-menu {
	background-color: #28a745; /* Same background for dropdown */
}

.navbar-custom .dropdown-menu .dropdown-item {
	color: white;
}

.navbar-custom .dropdown-menu .dropdown-item:hover {
	background-color: #218838; /* Darker green on hover */
}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-custom">
		<a class="navbar-brand" href="#">Medi Home</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="index.jsp">HOME</a></li>
				<li class="nav-item"><a class="nav-link" href="doctor.jsp">DOCTOR</a></li>
				<li class="nav-item"><a class="nav-link" href="view_doctor.jsp">VIEW DOCTOR</a></li>
				<li class="nav-item"><a class="nav-link" href="patient.jsp">PATIENT</a></li>
			</ul>
			<ul class="navbar-nav">
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Admin </a>
					<div class="dropdown-menu dropdown-menu-right"
						aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#">Profile</a> <a
							class="dropdown-item" href="#">Settings</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="../adminLogout">Logout</a>
						
					</div></li>
			</ul>
		</div>
	</nav>
</body>
</html>