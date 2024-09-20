<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Login Page</title>
<%@ include file="component/allcss.jsp"%>
<style>
.login-container {
	max-width: 400px;
	margin: 50px auto;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	background-color: #fff;
}

.login-container h3 {
	margin-bottom: 20px;
	text-align: center;
}

.btn-login {
	width: 100%;
	background-color: #28a745;
	color: #fff;
}
</style>
</head>
<body>
	<%@ include file="component/navbar.jsp"%>

	<div class="container">
		<div class="login-container">
			<h3>Doctor Login</h3>
			<c:if test="${not empty succMsg}">
				<p class="text-center text-success fs-3">${succMsg}</p>
				<c:remove var="succMsg" scope="session" />
			</c:if>

			<c:if test="${not empty errorMsg}">
				<p class="text-center text-danger fs-3">${errorMsg}</p>
				<c:remove var="errorMsg" scope="session" />
			</c:if>
			<form action="doctorLogin" method="POST">
				<div class="mb-3">
					<label for="email" class="form-label">Email address</label> <input
						type="email" class="form-control" id="email" name="email"
						placeholder="Enter your email">
				</div>
				<div class="mb-3">
					<label for="password" class="form-label">Password</label> <input
						type="password" class="form-control" id="password" name="password"
						placeholder="Enter your password">
				</div>
				<button type="submit" class="btn btn-login">Login</button>
			</form>

		</div>
	</div>
</body>
</html>