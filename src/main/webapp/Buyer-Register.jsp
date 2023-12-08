<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Buyer Register | Online E-Store</title>
    <!-- CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/Global.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/HeaderFooter.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/Register.css">
    
    <!-- Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
  </head>
  <body>
  
  	<jsp:include page="./Includes/Header.jsp" />
  	
    <div class="container">
      <div class="row">
        <div class="col my-5 pb-2">
	        <h1 class="text-center my-5">Buyer Register Page</h1>
	        <h5 class="text-center">Go <a href="${pageContext.request.contextPath}/Register.jsp">back</a> to register selection.</h5>
	    </div>
      </div>
      <div class="row">
        <div class="col d-block my-5 py-4">
          <img src="${pageContext.request.contextPath}/Assets/svg/fill-form.svg" class="d-block mx-auto w-25" alt="Fill Form" />
        </div>
      </div>
      <form action="${pageContext.request.contextPath}/BuyerRegister" method="POST">
	      <div class="row">
	        <div class="col-12 col-lg-6 mb-4">
	          <div class="mb-3">
	            <label for="username" class="form-label">Username:</label>
	            <input type="text" class="form-control" id="username" name="username" />
	          </div>
	        </div>
	        <div class="col-12 col-lg-6 mb-4">
	          <div class="mb-3">
	            <label for="display-name" class="form-label">Display Name:</label>
	            <input type="text" class="form-control" id="display-name" name="display-name" />
	          </div>
	        </div>
	      </div>
	      <div class="row">
	        <div class="col-12 col-lg-6 mb-4">
	          <div class="mb-3">
	            <label for="email" class="form-label">Email:</label>
	            <input type="text" class="form-control" id="email" name="email" />
	          </div>
	        </div>
	        <div class="col-12 col-lg-6 mb-4">
	          <div class="mb-3">
	            <label for="contact-no" class="form-label">Contact No:</label>
	            <input type="text" class="form-control" id="contact-no" name="contact-no" />
	          </div>
	        </div>
	      </div>
	      <div class="row">
	        <div class="col-12 col-lg-6 mb-4">
	          <div class="mb-3">
	            <label for="password" class="form-label">Password:</label>
	            <input type="password" class="form-control" id="password" name="password" autocomplete="off" />
	          </div>
	        </div>
	        <div class="col-12 col-lg-6 mb-4">
	          <div class="mb-3">
	            <label for="confirm-password" class="form-label">Confirm Password:</label>
	            <input type="password" class="form-control" id="confirm-password" name="confirm-password" autocomplete="off" />
	          </div>
	        </div>
	      </div>
	      <div class="row">
	        <div class="col">
	          <input type="submit" value="Register Buyer" class="d-block property-btn btn btn-outline-blue w-50 mt-4 mb-5 mx-auto" />
	        </div>
	      </div>
    
    	</form>
    </div>
    
    <jsp:include page="./Includes/Footer.jsp" />
    
    <c:if test="${Status}">
		<script>alert("${StatusMsg}")</script>
	</c:if>
  </body>
</html>