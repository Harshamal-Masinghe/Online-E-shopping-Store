package com.OnlineEShopingStore.Utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Base64;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.OnlineEShopingStore.Utils.UtilClasses;

public class UtilClasses {

	// Start: Old authentication related Methods (ignore these)
	public static String GenerateToken(int tokenSize) {
		String AlphaNumericString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ" + "0123456789" + "abcdefghijklmnopqrstuvxyz";

		// create StringBuffer size of AlphaNumericString
		StringBuilder sb = new StringBuilder(tokenSize);

		for (int i = 0; i < tokenSize; i++) {

			// generate a random number between
			// 0 to AlphaNumericString variable length
			int index = (int) (AlphaNumericString.length() * Math.random());

			// add Character one by one in end of sb
			sb.append(AlphaNumericString.charAt(index));
		}

		return sb.toString();
	}

	public static String GenerateAuthToken(String userType, int userId) {
		String token = UtilClasses.GenerateToken(32);
		String authStructure = "";

		if (userType == "admin") {
			authStructure = Integer.toString(userId) + ":ADMIN:" + token;
		}

		if (userType == "seller") {
			authStructure = Integer.toString(userId) + ":SELLER:" + token;
		}

		if (userType == "buyer") {
			authStructure = Integer.toString(userId) + ":BUYER:" + token;
		}

		String authtoken = Base64.getEncoder().encodeToString(authStructure.getBytes());
		String sql = "UPDATE " + userType + " SET token='" + authtoken + "' WHERE id=" + userId + ";";

		try {
			// Setup database connection
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(dbconfig.databaseURL, dbconfig.user, dbconfig.password);

			Statement pst = conn.createStatement();
			int rs = pst.executeUpdate(sql);

			if (rs == 1) {
				return authtoken;
			}

			return null;

		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	// End: Old authentication related Methods (ignore these)

	// Start: Authorization related methods
	public static boolean AuthorizeAdmin(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String usertype = (String) session.getAttribute("type");

		if (usertype != "admin") {
			return false;
		}

		return true;
	}

	public static boolean AuthorizeSeller(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String usertype = (String) session.getAttribute("type");

		if (usertype != "seller") {
			return false;
		}

		return true;
	}

	public static boolean AuthorizeBuyer(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String usertype = (String) session.getAttribute("type");

		if (usertype != "buyer") {
			return false;
		}

		return true;
	}
	// End: Authorization related methods

	// Start: Number methods
	private static Pattern pattern = Pattern.compile("-?\\d+(\\.\\d+)?");

	public static boolean isNumeric(String strNum) {
		if (strNum == null) {
			return false;
		}
		return pattern.matcher(strNum).matches();
	}
	// End: Number methods

	// Start: String methods
	public static String trimString(String text, int length) {
		return text.substring(0, Math.min(text.length(), length));
	}
	// End: String methods

}
