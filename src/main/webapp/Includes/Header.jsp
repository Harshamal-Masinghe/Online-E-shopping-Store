<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
String userType = (String) session.getAttribute("type");
if(userType != "admin" && userType != "seller" && userType != "buyer"){
	userType = "public";
}
%>


<div id="status" class="navbar-light bg-light py-1">Currently user logged in as: &nbsp; <span><%= userType %></span></div>
<nav id="navbar" class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
  <div class="container-fluid bg-light pb-3">
    <a class="navbar-brand" href="${pageContext.request.contextPath}">
      <img id="site-logo" src="${pageContext.request.contextPath}/Assets/svg/newLogo.svg" class="img-fluid" alt="Logo" />
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
      <ul class="navbar-nav ml-auto">
        
        
        <% if(userType.equals("public")){ %>
	        <li class="nav-item mx-2">
	          <a class="nav-link" aria-current="page" href="${pageContext.request.contextPath}">Home</a>
	        </li>
	        
	        <li class="nav-item mx-2">
	          <a class="nav-link" href="#" >Site</a>
	        </li>
        
        	<li class="nav-item mx-2">
	          <a class="nav-link" href="#">About</a>
	        </li>
	        
	        <li class="nav-item mx-2">
	          <a class="nav-link" href="${pageContext.request.contextPath}/Login.jsp" >Login</a>
	        </li>
        <% } %>
        
        
        <% if(userType.equals("admin")){ %>
        	<li class="nav-item mx-2">
	          <a class="nav-link" href="${pageContext.request.contextPath}/Admin-Dashboard.jsp">Admin Dashboard</a>
	        </li>
	        
	        <li class="nav-item mx-2">
	          <a class="nav-link" href="#">Site</a>
	        </li>
	        
	        <li class="nav-item mx-2">
	          <a class="nav-link" href="${pageContext.request.contextPath}/Logout">Logout</a>
	        </li>
        <% } %>
        
        
        <% if(userType.equals("seller")){ %>
        	<li class="nav-item mx-2">
	          <a class="nav-link" href="${pageContext.request.contextPath}/Seller-Dashboard.jsp">Seller Dashboard</a>
	        </li>
	        
	        <li class="nav-item mx-2">
	          <a class="nav-link" href="#">Site</a>
	        </li>
	        
	        <li class="nav-item mx-2">
	          <a class="nav-link" href="${pageContext.request.contextPath}/Logout">Logout</a>
	        </li>
        <% } %>
        
        
        <% if(userType.equals("buyer")){ %>
        	<li class="nav-item mx-2">
	          <a class="nav-link" aria-current="page" href="${pageContext.request.contextPath}">Home</a>
	        </li>
	        
	        <li class="nav-item mx-2">
	          <a class="nav-link" href="#">Site</a>
	        </li>
	        
	        <li class="nav-item mx-2">
	          <a class="nav-link" aria-current="page" href="#">Profile</a>
	        </li>
	        
	        <li class="nav-item mx-2">
	          <a class="nav-link" href="${pageContext.request.contextPath}/Logout">Logout</a>
	        </li>
        <% } %>
        
        
        
        <!--  <li class="nav-item mx-2">
          <a class="nav-link" href="#">Contact Us</a>
        </li> -->
        
        
      </ul>
    </div>
  </div>
</nav>