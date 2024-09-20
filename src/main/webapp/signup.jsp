<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="../component/allcss.jsp"%>
<style>
.register-container {
	max-width: 400px;
	margin: 50px auto;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	background-color: #fff;
}

.register-container h3 {
	margin-bottom: 20px;
	text-align: center;
}

.btn-signup {
	width: 100%;
	background-color: #28a745;
	color: #fff;
}
</style>
</head>
<body>
	<%@ include file="component/navbar.jsp"%>
	<div class="container">
		<div class="register-container">
			<h3>User Register</h3>

			<c:if test="${not empty sucMsg}">
				<p class="text-center text-success fs-3">${sucMsg}</p>
				<c:remove var="sucMsg" scope="session" />
			</c:if>

			<c:if test="${not empty errorMsg}">
				<p class="text-center text-danger fs-3">${errorMsg}</p>
				<c:remove var="errorMsg" scope="session" />
			</c:if>

			<form action="user_register" method="post">
				<div class="mb-3">
					<label for="fullName" class="form-label">Full Name</label> <input
						type="text" class="form-control" id="fullName" name="fullName"
						placeholder="Enter your full name">
				</div>
				<div class="mb-3">
					<label for="email" class="form-label">Email</label> <input
						type="email" class="form-control" id="email" name="email"
						placeholder="Enter your email">
				</div>
				<div class="mb-3">
					<label for="password" class="form-label">Password</label> <input
						type="password" class="form-control" id="password" name="password"
						placeholder="Enter your password">
				</div>

				<button type="submit" class="btn btn-signup">Signup</button>
			</form>
		</div>
	</div>

</body>
</html>