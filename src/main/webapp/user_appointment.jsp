<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Doctor"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<!-- Bootstrap 5 CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>


.backImg p {
	font-size: 2rem;
	color: white;
	font-weight: bold;
}

.paint-card {
	border: 1px solid #ddd;
	box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
	border-radius: 8px;
}

.container {
	margin-top: 50px;
}
</style>
</head>
<body>

	<%@include file="component/navbar.jsp"%>

	<div class="container p-3">
		<div class="row">
			<!-- Left Image Section -->
			<div class="col-md-6 p-5">
				<img alt="Doctor Image" src="img/doct2.jpg"
					class="img-fluid rounded-circle">
			</div>

			<!-- Right Form Section -->
			<div class="col-md-6">
				<div class="card paint-card">
					<div class="card-body">
						<p class="text-center fs-3">User Appointment</p>

						<!-- Error Message Display -->
						<c:if test="${not empty errorMsg}">
							<p class="fs-4 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>

						<!-- Success Message Display -->
						<c:if test="${not empty succMsg}">
							<p class="fs-4 text-center text-success">${succMsg}</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<!-- Appointment Form -->
						<form class="row g-3" action="addAppointment" method="post">
				
							<input type="hidden" name="user_id" value="${userObj.id}">
							
							

							<div class="col-md-6">
								<label for="fullName" class="form-label">Full Name</label> <input
									required type="text" class="form-control" name="fullname"
									id="fullName">
							</div>

							<div class="col-md-6">
								<label>Gender</label> <select class="form-select" name="gender"
									required>
									<option value="male">Male</option>
									<option value="female">Female</option>
								</select>
							</div>

							<div class="col-md-6">
								<label for="age" class="form-label">Age</label> <input required
									type="number" class="form-control" name="age" id="age">
							</div>

							<div class="col-md-6">
								<label for="appointDate" class="form-label">Appointment
									Date</label> <input required type="date" class="form-control"
									name="appointment_date" id="appointDate">
							</div>

							<div class="col-md-6">
								<label for="email" class="form-label">Email</label> <input
									required type="email" class="form-control" name="email"
									id="email">
							</div>

							<div class="col-md-6">
								<label for="phoneNo" class="form-label">Phone No</label> <input
									required type="text" maxlength="10" class="form-control"
									name="phone_number" id="phoneNo">
							</div>

							<div class="col-md-6">
								<label for="diseases" class="form-label">Diseases</label> <input
									required type="text" class="form-control" name="diseases"
									id="diseases">
							</div>

							<div class="col-md-6">
								<label for="doctor" class="form-label">Doctor</label> <select
									required class="form-select" name="doctor_id" id="doctor">
									<option value="">--select--</option>

									<%
									DoctorDao dao = new DoctorDao(DBConnect.getConn());
									List<Doctor> list = dao.getAllDoctor();
									for (Doctor d : list) {
									%>
									<option value="<%=d.getId()%>">
										<%=d.getFullName()%> (<%=d.getSpecialist()%>)
									</option>
									<%
									}
									%>
								</select>
							</div>

							<div class="col-md-12">
								<label for="fullAddress" class="form-label">Full Address</label>
								<textarea required name="address" class="form-control" rows="3"
									id="fullAddress"></textarea>
							</div>

							<!-- If user is not logged in -->
							<c:if test="${empty userObj}">
								<a href="user_login.jsp"
									class="col-md-6 offset-md-3 btn btn-success">Login to
									Submit</a>
							</c:if>

							<!-- If user is logged in -->
							<c:if test="${not empty userObj}">
								<button type="submit"
									class="col-md-6 offset-md-3 btn btn-success">Submit</button>
							</c:if>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap 5 JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
