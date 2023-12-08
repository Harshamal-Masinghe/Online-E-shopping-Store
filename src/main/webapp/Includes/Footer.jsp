<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<div id="footer" class="container-fluid">
  <footer class="row row-cols-1 row-cols-sm-2 row-cols-md-5 py-5">
    <div class="col mb-3">
      <img id="footer-logo" src="${pageContext.request.contextPath}/Assets/svg/newLogo.svg" alt="logo" />
    </div>
    <div class="col mb-3"></div>
    <div class="col mb-3">
      <h5 class="text-white">Useful Links</h5>
      <ul class="nav flex-column">
        <li class="nav-item footer-item mb-2">
          <a href="${pageContext.request.contextPath}" class="nav-link footer-link p-0 text-muted">Home</a>
        </li>
        <li class="nav-item footer-item mb-2">
          <a href="#" class="nav-link footer-link p-0 text-muted">Site</a>
        </li>
        <li class="nav-item footer-item mb-2">
          <a href="#" class="nav-link footer-link p-0 text-muted">About</a>
        </li>
        <li class="nav-item footer-item mb-2">
          <a href="#" class="nav-link footer-link p-0 text-muted">Contact Us</a>
      </ul>
    </div>
    <div class="col mb-3">
      <h5 class="text-white">Registration</h5>
      <ul class="nav flex-column">
        <li class="nav-item footer-item mb-2">
          <a href="${pageContext.request.contextPath}/Seller-Register.jsp" class="nav-link footer-link p-0 text-muted">Seller Register</a>
        </li>
        <li class="nav-item footer-item mb-2">
          <a href="${pageContext.request.contextPath}/Buyer-Register.jsp" class="nav-link footer-link p-0 text-muted">Buyer Register</a>
        </li>
      </ul>
    </div>
    <div class="col mb-3">
      <h5 class="text-white">Login</h5>
      <ul class="nav flex-column">
        <li class="nav-item footer-item mb-2"> 
          <a href="${pageContext.request.contextPath}/Admin-Login.jsp" class="nav-link footer-link p-0 text-muted">Admin Login</a>
        </li>
        <li class="nav-item footer-item mb-2">
          <a href="${pageContext.request.contextPath}/Seller-Login.jsp" class="nav-link footer-link p-0 text-muted">Seller Login</a>
        </li>
        <li class="nav-item footer-item mb-2">
          <a href="${pageContext.request.contextPath}/Buyer-Login.jsp" class="footer-link nav-link p-0 text-muted">Buyer Login</a>
        </li>
      </ul>
    </div>
  </footer>
</div>