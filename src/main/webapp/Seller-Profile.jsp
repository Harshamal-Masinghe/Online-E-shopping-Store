<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Seller Profile | Online E-Store</title>

        <!-- CSS -->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
        />
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/Global.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/HeaderFooter.css">

        <!-- Scripts -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    
     <body>
     	<jsp:include page="./Includes/Header.jsp" />
    
    	
    
        <div class="container">
        
        	<form action="${pageContext.request.contextPath}/SellerProfile" method="POST">
	        	
	            <div class="row">
	                <div class="col">
	                    <h1 class="text-center my-5">Seller Profile</h1>
	                </div>
	            </div>
	            
	            <div class="row">
	            	<div class="col">
	            		<img class="d-block mx-auto mb-5 pb-2" src="https://api.dicebear.com/6.x/initials/svg?radius=50&size=175&seed=${ seller.username }" />
	            	</div>
	            </div>
	            
	            <div class="row">
	                <div class="col-12 col-lg-6 mb-4">
	                    <div class="mb-3">
	                        <label for="username" class="form-label"
	                            >Username:</label
	                        >
	                        <input
	                            type="text"
	                            class="form-control"
	                            id="username"
	                            value="${ seller.username }"
	                            disabled
	                        />
	                    </div>
	                </div>
	                <div class="col-12 col-lg-6 mb-4">
	                    <div class="mb-3">
	                        <label for="display-name" class="form-label"
	                            >Display Name:</label
	                        >
	                        <input
	                            type="text"
	                            class="form-control"
	                            id="display-name"
	                            name="display-name"
	                            value="${ seller.display_name }"
	                        />
	                    </div>
	                </div>
	            </div>
	
	            <div class="row">
	                <div class="col-12 col-lg-6 mb-4">
	                    <div class="mb-3">
	                        <label for="email" class="form-label">Email:</label>
	                        <input
	                            type="text"
	                            class="form-control"
	                            id="email"
	                            name="email"
	                            value="${ seller.email }"
	                        />
	                    </div>
	                </div>
	                <div class="col-12 col-lg-6 mb-4">
	                    <div class="mb-3">
	                        <label for="contact-no" class="form-label"
	                            >Contact No:</label
	                        >
	                        <input
	                            type="text"
	                            class="form-control"
	                            id="contact-no"
	                            name="contact-no"
	                            value="${ seller.contact }"
	                        />
	                    </div>
	                </div>
	            </div>
	
	            <div class="row">
	                <div class="col-12 mb-4">
	                    <div class="mb-3">
	                        <label for="address" class="form-label">Address:</label>
	                        <input
	                            type="text"
	                            class="form-control"
	                            id="address"
	                            name="address"
	                            value="${ seller.address }"
	                        />
	                    </div>
	                </div>
	            </div>
	
	            <div class="row">
	                <div class="col">
	                    <h3 class="my-4">Password Settings</h3>
	                </div>
	            </div>
	
	            <div class="row">
	                <div class="col-12 col-lg-6 mb-4">
	                    <div class="mb-3">
	                        <label for="password" class="form-label"
	                            >Password:</label
	                        >
	                        <input
	                            type="password"
	                            class="form-control"
	                            id="password"
	                            name="password"
	                            autocomplete="off"
	                        />
	                    </div>
	                </div>
	                <div class="col-12 col-lg-6 mb-4">
	                    <div class="mb-3">
	                        <label for="confirm-password" class="form-label"
	                            >Confirm Password:</label
	                        >
	                        <input
	                            type="password"
	                            class="form-control"
	                            id="confirm-password"
	                            name="confirm-password"
	                            autocomplete="off"
	                        />
	                    </div>
	                </div>
	            </div>
	
	            <div class="row">
	                <div class="col">
	                    <input type="submit" class="d-block property-btn btn btn-outline-blue w-50 mt-4 mb-5 mx-auto" value="Save Changes" />
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
