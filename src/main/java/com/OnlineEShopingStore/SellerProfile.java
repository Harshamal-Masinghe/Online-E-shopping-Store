package com.OnlineEShopingStore;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.OnlineEShopingStore.Utils.Seller;
import com.OnlineEShopingStore.Utils.SellerDBUtil;
import com.OnlineEShopingStore.Utils.UtilClasses;

/**
 * Servlet implementation class SellerProfile
 */
@WebServlet("/SellerProfile")
public class SellerProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// GET: /SellertProfile => Show Listing Page
		
		// Authorize Seller
		if(!UtilClasses.AuthorizeSeller(request)) {
			response.sendRedirect(request.getContextPath() + "/");
			return;
		}
		
		// Get user info
		HttpSession session=request.getSession();
		int uid = (int) session.getAttribute("uid");
		Seller seller = SellerDBUtil.getSeller(uid);
		System.out.println(seller);
		request.setAttribute("seller", seller);
		
		
		
		// Send to view
		RequestDispatcher dispatcher = request.getRequestDispatcher("Seller-Profile.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// Authorize Seller
		if (!UtilClasses.AuthorizeSeller(request)) {
			response.sendRedirect(request.getContextPath() + "/");
			return;
		}
		
		
		HttpSession session=request.getSession();
		int uid = (int) session.getAttribute("uid");
		
		String display_name = request.getParameter("display-name");
		String email = request.getParameter("email");
		String contact_no = request.getParameter("contact-no");
		String address = request.getParameter("address");
		String password = request.getParameter("password");
		String confirm_password = request.getParameter("confirm-password");
		
		request.setAttribute("Status", true);
		
		// Validation: Fields check
		if (display_name.isBlank() || email.isBlank() || contact_no.isBlank() || address.isBlank()) {
			request.setAttribute("StatusMsg", "One or more field is not supplied.");
			RequestDispatcher dispatcher = request.getRequestDispatcher("Seller-Profile.jsp");
			dispatcher.forward(request, response);
			return;
		}
		
		// Validation: Password check
		if(!password.equals(confirm_password)) {
			request.setAttribute("StatusMsg", "Confirm password not match with password.");
			RequestDispatcher dispatcher = request.getRequestDispatcher("Seller-Profile.jsp");
			dispatcher.forward(request, response);
			return;
		}
		
		// Update Seller
		boolean isSellerUpdated = false;
		if(!password.isBlank()) {
			isSellerUpdated = SellerDBUtil.updateSeller(true, display_name, email, contact_no, address, password, uid);
		}else {
			isSellerUpdated = SellerDBUtil.updateSeller(false, display_name, email, contact_no, address, null, uid);
		}

		// Set appropriate message
		if(isSellerUpdated) {
			request.setAttribute("StatusMsg", "Seller details updated successfully.");
		}else {
			request.setAttribute("StatusMsg", "Seller details failed to update.");
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("Seller-Profile.jsp");
		dispatcher.forward(request, response);
		return;
		
	}

}
