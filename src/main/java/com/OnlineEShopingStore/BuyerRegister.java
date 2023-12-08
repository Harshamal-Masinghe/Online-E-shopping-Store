package com.OnlineEShopingStore;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.OnlineEShopingStore.Utils.BuyerDBUtil;
import com.OnlineEShopingStore.Utils.UtilClasses;

/**
 * Servlet implementation class BuyerRegister
 */
@WebServlet("/BuyerRegister")
public class BuyerRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// GET: /BuyerRegister => Show Buyer Register Page
		
		// Authorize only public user
		if (UtilClasses.AuthorizeAdmin(request) || UtilClasses.AuthorizeSeller(request) || UtilClasses.AuthorizeBuyer(request)) {
			response.sendRedirect(request.getContextPath() + "/");
			return;
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("Buyer-Register.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Authorize only public user
		if (UtilClasses.AuthorizeAdmin(request) || UtilClasses.AuthorizeSeller(request) || UtilClasses.AuthorizeBuyer(request)) {
			response.sendRedirect(request.getContextPath() + "/");
			return;
		}
		
		String username = request.getParameter("username");
		String display_name = request.getParameter("display-name");
		String email = request.getParameter("email");
		String contactno = request.getParameter("contact-no");
		String password = request.getParameter("password");
		String confirmPassword = request.getParameter("confirm-password");
		
		
		// Check all inputs are provided
		if(username.isBlank() || display_name.isBlank() || email.isBlank() || contactno.isBlank() || password.isBlank() || confirmPassword.isBlank()) {
			request.setAttribute("Status", true);
			request.setAttribute("StatusMsg", "One or more field is not supplied.");
			RequestDispatcher dispatcher = request.getRequestDispatcher("Buyer-Register.jsp");
			dispatcher.forward(request, response);
			return;
		}
		
		// Check password match with confirm password
		if(!password.equals(confirmPassword)) {
			request.setAttribute("Status", true);
			request.setAttribute("StatusMsg", "Confirm password does not match with password.");
			RequestDispatcher dispatcher = request.getRequestDispatcher("Buyer-Register.jsp");
			dispatcher.forward(request, response);
			return;
		}
		
		// Check password match with confirm password
		if(!contactno.matches("^[0-9]{10}$")) {
			request.setAttribute("Status", true);
			request.setAttribute("StatusMsg", "Please enter a valid phone number.");
			RequestDispatcher dispatcher = request.getRequestDispatcher("Buyer-Register.jsp");
			dispatcher.forward(request, response);
			return;
		}
		
		// Register
		boolean registrationStatus = BuyerDBUtil.registerBuyer(username, display_name, email, contactno, password);
		
		if(registrationStatus) {
			request.setAttribute("Status", true);
			request.setAttribute("StatusMsg", "Buyer registered successfully.");
			RequestDispatcher dispatcher = request.getRequestDispatcher("Buyer-Register.jsp");
			dispatcher.forward(request, response);
			return;
		}
		
		request.setAttribute("Status", true);
		request.setAttribute("StatusMsg", "A buyer with this username already exists. Please choose another username.");
		RequestDispatcher dispatcher = request.getRequestDispatcher("Buyer-Register.jsp");
		dispatcher.forward(request, response);
		return;
	}

}
