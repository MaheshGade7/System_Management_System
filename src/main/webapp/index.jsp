<%@page import="com.db.DBConnect" %>
<%@page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="component/allcss.jsp"%>
</head>
<style>
.feature-box {
	border-radius: 10px;
	padding: 20px;
	background-color: #f8f9fa;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	margin-bottom: 20px;
}
.doctor-image {
	max-width: 100%;
	height: auto;
	border-radius: 10px;
}

.features-row {
	align-items: center;
}
.team-member {
	text-align: center;
	margin-bottom: 30px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	border-radius: 10px;
	padding: 20px;
	background-color: #f8f9fa;
}

.team-member img {
	width: 100%;
	height: auto;
	border-radius: 10px;
	margin-bottom: 15px;
}

.team-member h5 {
	font-weight: bold;
}

.team-member p {
	color: #6c757d;
}
</style>
<body>
	<%@ include file="component/navbar.jsp"%>

	<div id="carouselExampleIndicators" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/d2.jpg" class="d-block w-100" alt="..."
					height="600px">
			</div>
			<div class="carousel-item">
				<img src="img/doctor10.jpg" class="d-block w-100" alt="..."
					height="600px">
			</div>
			<div class="carousel-item">
				<img src="img/doct5.jpg" class="d-block w-100" alt="..."
					height="600px">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>
	<div class="container my-5">
		<h2 class="text-center mb-5">Key Features of our Hospital</h2>
		<div class="row features-row">
			<div class="col-lg-8">
				<div class="row">
					<div class="col-md-6">
						<div class="feature-box">
							<h4>100% Safety</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Voluptatem, inventore.</p>
						</div>
					</div>
					<div class="col-md-6">
						<div class="feature-box">
							<h4>Clean Environment</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Voluptatem, inventore.</p>
						</div>
					</div>
					<div class="col-md-6">
						<div class="feature-box">
							<h4>Friendly Doctors</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Voluptatem, inventore.</p>
						</div>
					</div>
					<div class="col-md-6">
						<div class="feature-box">
							<h4>Medical Research</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Voluptatem, inventore.</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-4">
				<img src="img/hos.jpg" alt="Doctor" class="doctor-image">
			</div>
		</div>
	</div>
	<div class="container my-5">
		<h2 class="text-center mb-5">Our Team</h2>
		<div class="row">
			<div class="col-md-3">
				<div class="team-member">
				<img src="img/doct2.jpg">
					<h5>Dr. Anu More</h5>
					
					<p>(CEO & Chairman)</p>
				</div>
			</div>
			<div class="col-md-3">
				<div class="team-member">
					<img src="img/doctor1.jpg">
					<h5>Samuani Simi</h5>
					<p>(Chief Doctor)</p>
				</div>
			</div>
			<div class="col-md-3">
				<div class="team-member">
					<img src="img/doctor5.jpg">
					<h5>Dr. Niuise Paule</h5>
					<p>(Chief Doctor)</p>
				</div>
			</div>
			<div class="col-md-3">
				<div class="team-member">
					<img src="img/doctor4.jpg">
					<h5>Dr. Mathue Samuel</h5>
					<p>(Chief Doctor)</p>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="component/footer.jsp"%>
</body>
</html>