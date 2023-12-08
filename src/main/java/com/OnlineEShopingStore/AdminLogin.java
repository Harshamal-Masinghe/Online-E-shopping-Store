package com.OnlineEShopingStore;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.OnlineEShopingStore.Utils.UtilClasses;
/**
 * Servlet implementation class AdminLogin
 */

@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// GET: /SellerLogin => Show Seller Login Page
		
		// Authorize only public user
		if (UtilClasses.AuthorizeAdmin(request) || UtilClasses.AuthorizeSeller(request) || UtilClasses.AuthorizeBuyer(request)) {
			response.sendRedirect(request.getContextPath() + "/");
			return;
		}
		
		request.setAttribute("isInvalidCreds", false);
		RequestDispatcher dispatcher = request.getRequestDispatcher("Admin-Login.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		System.out.println(username);
		System.out.println(password);
		
		if(!username.equals("harsha") || !password.equals("admin123")) {
			System.out.println("exec");
			request.setAttribute("isInvalidCreds", true);
			RequestDispatcher dispatcher = request.getRequestDispatcher("Admin-Login.jsp");
			dispatcher.forward(request, response);
		}else {
						
			// Set session variables. These can be used in other pages
			session.setAttribute("uid", 0);
			session.setAttribute("type", "admin");
			session.setAttribute("username", "pfadmin");
			
			response.sendRedirect(request.getContextPath() + "/Admin-Dashboard.jsp");
		}
	}
}
