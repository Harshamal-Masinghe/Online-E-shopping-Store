<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1">
    <title>Homepage | Online E-Store</title>
    <!-- CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/Global.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/HeaderFooter.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/Home.css">
    <!-- Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
  </head>
  <body>
  
  	<jsp:include page="./Includes/Header.jsp" />
  
    <div id="content" class="container-fuild">
      <div class="row">
        <div class="wrapper d-none d-md-none d-lg-block d-xl-block col-lg-6">
          <img id="banner-image" src="${pageContext.request.contextPath}/Assets/images/banner.png" alt="illustration" />
        </div>
        <div class="wrapper col-12 col-lg-6">
          <div class="d-block">
            <div class="d-block mb-4">
              <h1 class="logo-heading text-center">Welcome to</h1>
              <h1 class="logo-heading text-center">
                <p class="property">Online</p> &nbsp; <p class="finder">E-Store</p>
              </h1>            </div>
            <div class="d-flex justify-content-center">  
              <a type="button" class="btn btn-orange mx-4" href="#"> Go to site </a>
              <button type="button" class="btn btn-gray mx-4"> About </button>
            </div>
          </div>
        </div>
      </div>
    </div>
  
  	<jsp:include page="./Includes/Footer.jsp" />
  	
  </body>
</html>