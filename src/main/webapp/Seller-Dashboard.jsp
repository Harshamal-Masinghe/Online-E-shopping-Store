<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Seller Dashboard | Online E-Store</title>

<!-- CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/Global.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/HeaderFooter.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/AgentDashboard.css">

<!-- Scripts -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>
	<jsp:include page="./Includes/Header.jsp" />
	
	<div id="content" class="container">
		<div class="row">
			<div class="col my-4">
				<h1 class="text-center">Seller Dashboard</h1>
			</div>
		</div>
		<div class="row">
			<div class="col my-3">
				<img class="d-block mx-auto w-50" src="${pageContext.request.contextPath}/Assets/svg/personal-info.svg"
					alt="Banner" />
			</div>
		</div>
		<div class="row my-4">
			<div class="col-12 col-lg-6 mb-4">
				<a href="#">
					<div class="card">
						<div class="card-body">
							<h3 class="text-center my-4">My Items</h3>
							<p class="text-center">Includes the status of the items you
								created</p>
						</div>
					</div>
				</a>
			</div>
			<div class="col-12 col-lg-6 mb-4">
				<a href="${pageContext.request.contextPath}/Seller-Profile.jsp">
					<div class="card">
						<div class="card-body">
							<h3 class="text-center my-4">Profile</h3>
							<p class="text-center">Edit seller information</p>
						</div>
					</div>
				</a>
			</div>
		</div>
		<div class="row my-4">
			<div class="col-12">
				<a href="#">
					<div class="card">
						<div class="card-body">
							<h3 class="text-center my-4">Create item</h3>
							<p class="text-center">Consists of an application form to create an new advertisement. Note: Your application submission is sent to Online E-Store administrator for review process. Only advertisements that have the review test passed gets to the actual item page.</p>
						</div>
					</div>
				</a>
			</div>
		</div>
	</div>
	
	<jsp:include page="./Includes/Footer.jsp" />
</body>
</html>
