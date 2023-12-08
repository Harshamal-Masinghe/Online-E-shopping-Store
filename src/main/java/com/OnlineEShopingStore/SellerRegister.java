package com.OnlineEShopingStore;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.OnlineEShopingStore.Utils.SellerDBUtil;

/**
 * Servlet implementation class AgentRegister
 */
@WebServlet("/SellerRegister")
public class SellerRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// GET: /SellerRegister => Show Seller Register Page
		RequestDispatcher dispatcher = request.getRequestDispatcher("Seller-Register.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		String display_name = request.getParameter("display-name");
		String email = request.getParameter("email");
		String contactno = request.getParameter("contact-no");
		String address = request.getParameter("address");
		String password = request.getParameter("password");
		String confirmPassword = request.getParameter("confirm-password");
		
		
		// Check all inputs are provided
		if(username.isBlank() || display_name.isBlank() || email.isBlank() || contactno.isBlank() || address.isBlank() || password.isBlank() || confirmPassword.isBlank()) {
			request.setAttribute("Status", true);
			request.setAttribute("StatusMsg", "One or more field is not supplied.");
			RequestDispatcher dispatcher = request.getRequestDispatcher("Seller-Register.jsp");
			dispatcher.forward(request, response);
			return;
		}
		
		// Check password match with confirm password
		if(!password.equals(confirmPassword)) {
			request.setAttribute("Status", true);
			request.setAttribute("StatusMsg", "Confirm password does not match with password.");
			RequestDispatcher dispatcher = request.getRequestDispatcher("Seller-Register.jsp");
			dispatcher.forward(request, response);
			return;
		}
		
		// Check contact number in range
		if(!contactno.matches("^[0-9]{10}$")) {
			request.setAttribute("Status", true);
			request.setAttribute("StatusMsg", "Please enter a valid phone number.");
			RequestDispatcher dispatcher = request.getRequestDispatcher("Seller-Register.jsp");
			dispatcher.forward(request, response);
			return;
		}
		
		// Register
		boolean registrationStatus = SellerDBUtil.registerSeller(username, display_name, email, contactno, address, password);
		
		if(registrationStatus) {
			request.setAttribute("Status", true);
			request.setAttribute("StatusMsg", "Seller registered successfully.");
			RequestDispatcher dispatcher = request.getRequestDispatcher("Seller-Register.jsp");
			dispatcher.forward(request, response);
			return;
		}
		
		//check username already exists
		request.setAttribute("Status", true);
		request.setAttribute("StatusMsg", "The seller with this username already exists. Please choose another username.");
		RequestDispatcher dispatcher = request.getRequestDispatcher("Seller-Register.jsp");
		dispatcher.forward(request, response);
		return;
		
	}

}
