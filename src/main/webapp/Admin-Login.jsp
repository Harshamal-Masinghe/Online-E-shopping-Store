<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login | Online E-Store</title>

<!-- CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/Global.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/HeaderFooter.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/Login.css">

<!-- Scripts -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>

	<jsp:include page="./Includes/Header.jsp" />
	<div class="container my-4">
		<div class="row">
			<div class="col mt-5">
				<h1 class="text-center">Admin Login</h1>
			</div>
		</div>
		<div class="row">
			<div
				class="col-12 col-lg-6 d-flex justify-content-center align-items-center">
				<form action="${pageContext.request.contextPath}/AdminLogin"
					method="POST" class="w-100">
					<div class="mb-3">
						<label for="username" class="form-label">Username:</label> <input
							type="text" class="form-control" id="username" name="username"
							autocomplete="off" />
					</div>
					<div class="mb-3">
						<label for="password" class="form-label">Password:</label> <input
							type="password" class="form-control" id="password"
							name="password" autocomplete="off" />
					</div>
					<input type="submit"
						class="btn btn-outline-blue my-5 d-block mx-auto"
						value="Login as Admin" />
				</form>
			</div>
			<div
				class="d-none d-sm-none d-md-none d-lg-flex d-xl-flex col-lg-6 justify-content-center">
				<img id="illustration"
					src="${pageContext.request.contextPath}/Assets/svg/secure.svg"
					class="img-fluid" alt="" />
			</div>
		</div>
	</div>

	<jsp:include page="./Includes/Footer.jsp" />

	<c:if test="${isInvalidCreds}">
		<script>
			alert("Invalid username or password.")
		</script>
	</c:if>

</body>
</html>