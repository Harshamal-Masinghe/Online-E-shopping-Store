<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register | Online E-Store</title>

	<!-- CSS -->
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
        rel="stylesheet"
    />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/Global.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/HeaderFooter.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/Register.css">

</head>
<body>
	<jsp:include page="./Includes/Header.jsp" />
	
	  <div class="container my-5">
	    <div class="row">
	      <div class="col my-5 pb-5">
	        <h1 class="text-center mb-5">Register</h1>
	        <h5 class="text-center">Already have an account. Click <a href="${pageContext.request.contextPath}/Login.jsp">here</a> to login.</h5>
	      </div>
	    </div>
	    <div class="row">
	      <div class="col-12 col-md-6">
	        <div class="d-flex justify-content-center">
	          <img src="${pageContext.request.contextPath}/Assets/svg/avatar.svg" class="register-icons" alt="icon" />
	        </div>
	        <div class="d-block">
	          <h3 class="my-4 text-center">Buyer Register</h3>
	          <p class="text-center"> Lorem ipsum dolor sit amet consectetur adipisicing elit. Obcaecati illo ex amet blanditiis consectetur earum provident. Aperiam repudiandae ratione quam earum sint voluptatem. Eveniet corporis nisi nostrum accusantium facilis nihil. </p>
	        </div>
	        <div class="block">
	          <a href="${pageContext.request.contextPath}/Buyer-Register.jsp" class="btn btn-outline-blue my-5 d-block mx-auto">Register as a buyer</a>
	        </div>
	      </div>
	      <div class="col-12 col-md-6">
	        <div class="d-flex justify-content-center">
	          <img src="${pageContext.request.contextPath}/Assets/svg/building.svg" class="register-icons" alt="icon" />
	        </div>
	        <div class="d-block">
	          <h3 class="my-4 text-center">Seller Register</h3>
	          <p class="text-center"> Lorem ipsum dolor sit amet consectetur adipisicing elit. Obcaecati illo ex amet blanditiis consectetur earum provident. Aperiam repudiandae ratione quam earum sint voluptatem. Eveniet corporis nisi nostrum accusantium facilis nihil. </p>
	          <a href="${pageContext.request.contextPath}/Seller-Register.jsp" class="btn btn-outline-blue my-5 d-block mx-auto">Register as a seller</a>
	        </div>
	      </div>
	    </div>
	  </div>
	  
	  <jsp:include page="./Includes/Footer.jsp" />
</body>
</html>