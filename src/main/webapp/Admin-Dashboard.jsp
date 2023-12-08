<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Admin Dashboard | Online E-Store</title>

<!-- CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/Global.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/HeaderFooter.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/CSS/Admin.css" />

<!-- Scripts -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

	<jsp:include page="./Includes/Header.jsp" />


	<div class="container-fluid my-5">
		<div class="row">
	       <div class="col my-4">
				<h1 class="text-center">Admin Dashboard</h1>
			</div>
	     </div>
		<div class="row mt-5 mx-lg-5">
			<!-- mx - margin l&r-->
			<div class="col-sm-12 col-md-12 col-lg-6">
				<img src="${pageContext.request.contextPath}/Assets/svg/man-sitting-in-desk.svg"
					alt="Man sitting on top of a table feeling proud"
					class="container-img img-fluid mx-auto" style="width: 600px" />
				<!-- mx-auto centers an element -->
			</div>
			<div class="col-sm-12 col-md-12 col-lg-6 mt-5 column-2">
				<div class="row">
					<div class="col">
						<a href="${pageContext.request.contextPath}/pages/manage-products/index.html">
							<div
								class="card mx-auto des border-light rounded-3 mt-4 mx-sm-0 mx-5 px-0 w-100"
								id="review">
								<div class="card-body rounded-3 py-4">
									<!-- py - padding t&b -->
									<h3 class="card-title mt-2">Review Items</h3>
									<p class="card-text mt-2 pb-1">Review items and maintain the standard of what we post</p> 
								</div>
							</div>
						</a>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<a href="${pageContext.request.contextPath}/pages/manage-items/index.html">
							<div
								class="card mx-auto des border-light rounded-3 mt-4 mx-sm-0 mx-5 w-100">
								<div class="card-body link rounded-3 py-4">
									<h3 class="card-title mt-2">Manage Items</h3>
									<p class="card-text mt-2">Manage the advertisment in the item page</p>
								</div>
							</div>
						</a>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<a href="#">
							<div
								class="card mx-auto des border-light rounded-3 mt-4 mx-sm-0 mx-5 w-100">
								<div class="card-body rounded-3 py-4">
									<h3 class="card-title mt-2">Manage Accounts</h3>
									<p class="card-text mt-3">Review reports, block accounts
										and more</p>
								</div>
							</div>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="./Includes/Footer.jsp" />
</body>
</html>
