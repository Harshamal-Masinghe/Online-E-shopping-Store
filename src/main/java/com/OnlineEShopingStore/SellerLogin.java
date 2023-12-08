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
 * Servlet implementation class SellerLogin
 */
@WebServlet("/SellerLogin")
public class SellerLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// GET: /SellerLogin => Show Agent Login Page
		
		// Authorize only public user
		if (UtilClasses.AuthorizeAdmin(request) || UtilClasses.AuthorizeSeller(request) || UtilClasses.AuthorizeBuyer(request)) {
			response.sendRedirect(request.getContextPath() + "/");
			return;
		}
		
		request.setAttribute("isInvalidCreds", false);
		RequestDispatcher dispatcher = request.getRequestDispatcher("Seller-Login.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		// Validate credentials
		Seller seller = null;
		try {
			seller = SellerDBUtil.validateSeller(username, password);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		if(seller == null) {
			request.setAttribute("isInvalidCreds", true);
			RequestDispatcher dispatcher = request.getRequestDispatcher("Seller-Login.jsp");
			dispatcher.forward(request, response);
		}else {
			
//			Using serverlet sessions instead of this method (old implementation just for reference)
//			// Generate auth token
//			String authtoken = UtilClasses.GenerateAuthToken("seller", seller.getId());
//			System.out.println(authtoken);
//			
//			// Generate cookie
//			Cookie authcookie = new Cookie("auth", authtoken);
//			response.addCookie(authcookie);
			
			// Set session variables. These can be used in other pages
			session.setAttribute("uid", seller.getId());
			session.setAttribute("type", "seller");
			session.setAttribute("username", seller.getUsername());
			
			response.sendRedirect(request.getContextPath() + "/Seller-Dashboard.jsp");
		}
	}

}
