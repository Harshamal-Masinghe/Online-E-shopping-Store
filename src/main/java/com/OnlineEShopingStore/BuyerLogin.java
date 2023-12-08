package com.OnlineEShopingStore;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.OnlineEShopingStore.Utils.Buyer;
import com.OnlineEShopingStore.Utils.BuyerDBUtil;
import com.OnlineEShopingStore.Utils.UtilClasses;

/**
 * Servlet implementation class BuyerLogin
 */
@WebServlet("/BuyerLogin")
public class BuyerLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// GET: /AgentLogin => Show Agent Login Page
		
		// Authorize only public user
		if (UtilClasses.AuthorizeAdmin(request) || UtilClasses.AuthorizeSeller(request) || UtilClasses.AuthorizeBuyer(request)) {
			response.sendRedirect(request.getContextPath() + "/");
			return;
		}
		
		request.setAttribute("isInvalidCreds", false);
		RequestDispatcher dispatcher = request.getRequestDispatcher("Buyer-Login.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// Authorize only public user
		if (UtilClasses.AuthorizeAdmin(request) || UtilClasses.AuthorizeSeller(request) || UtilClasses.AuthorizeBuyer(request)) {
			response.sendRedirect(request.getContextPath() + "/");
			return;
		}
		
		HttpSession session = request.getSession();

		String username = request.getParameter("username");
		String password = request.getParameter("password");

		// Validate credentials
		Buyer buyer = null;
		try {
			buyer = BuyerDBUtil.validateBuyer(username, password);

		} catch (Exception e) {
			e.printStackTrace();
		}

		if (buyer == null) {
			request.setAttribute("isInvalidCreds", true);
			RequestDispatcher dispatcher = request.getRequestDispatcher("Buyer-Login.jsp");
			dispatcher.forward(request, response);
		} else {

			// Set session variables. These can be used in other pages
			session.setAttribute("uid", buyer.getId());
			session.setAttribute("type", "buyer");
			session.setAttribute("username", buyer.getUsername());

			response.sendRedirect(request.getContextPath() + "/");
		}
	}

}
