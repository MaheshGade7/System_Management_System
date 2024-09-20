<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.card {
	border: 1px solid #ddd;
	border-radius: 8px;
	padding: 20px;
	text-align: center;
	margin: 10px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.card-icon {
	font-size: 40px;
	color: #28a745;
	margin-bottom: 10px;
}

.card-title {
	font-size: 20px;
	font-weight: bold;
}

.card-number {
	font-size: 24px;
	color: #28a745;
}
</style>

<%@include file="../component/allcss.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<c:if test="${empty adminObj}">
		<c:redirect url="../admin_login.jsp"></c:redirect>
	</c:if>
	<div class="container mt-5">
		<p class="text-center fs-4 pt-3">Admin Dashboard</p>
		<c:if test="${not empty succMsg}">
			<p class="text-center text-success fs-3">${succMsg}</p>
			<c:remove var="succMsg" scope="session" />
		</c:if>

		<c:if test="${not empty errorMsg}">
			<p class="text-center text-danger fs-3">${errorMsg}</p>
			<c:remove var="errorMsg" scope="session" />
		</c:if>
		<%
		DoctorDao dao=new DoctorDao(DBConnect.getConn()); 
		%>
		<div class="row">
			<div class="col-md-3">
				<div class="card">
					<div class="card-icon">
						<i class="fas fa-user-md"></i>
					</div>
					<div class="card-title">Doctor</div>
					<div class="card-number"><%=dao.countDoctor() %></div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card">
					<div class="card-icon">
						<i class="fas fa-user"></i>
					</div>
					<div class="card-title">User</div>
					<div class="card-number"><%=dao.countUser() %></div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card">
					<div class="card-icon">
						<i class="fas fa-calendar-check"></i>
					</div>
					<div class="card-title">Total Appointment</div>
					<div class="card-number"><%=dao.countAppointment() %></div>
				</div>
			</div>
			<div class="col-md-3" data-bs-toggle="modal"
				data-bs-target="#exampleModal">
				<div class="card">
					<div class="card-icon">
						<i class="fas fa-calendar-alt"></i>
					</div>
					<div class="card-title">Specialist</div>
					<div class="card-number"><%=dao.countSpecialist() %></div>
				</div>
			</div>

		</div>
	</div>



	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form action="../addSpecialist" method="post">
						<div class="form-group">
							<label>Enter Specialist</label> <input type="text"
								name="specName" class="form-control">
						</div>

						<div class="text-center">
							<button type="submit" class="btn btn-primary">Add</button>
						</div>

					</form>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>

				</div>
			</div>
		</div>
	</div>


	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script src="https://kit.fontawesome.com/a076d05399.js"></script>

</body>
</html>