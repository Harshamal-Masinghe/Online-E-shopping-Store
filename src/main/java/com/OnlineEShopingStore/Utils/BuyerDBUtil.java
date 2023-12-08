package com.OnlineEShopingStore.Utils;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class BuyerDBUtil {
	
	public static Buyer validateBuyer(String username, String password){
		
		try {
			// Setup database connection
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(dbconfig.databaseURL, dbconfig.user, dbconfig.password);
			
			String sql = "SELECT * FROM onlineeshopingstore.buyer WHERE username='"+username+"' AND password='"+password+"';";
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery(sql);	
			
			// True if the new current row is valid; false if there are no more rows
			if(rs.next() == true) {
				int id = rs.getInt("id");
				String uname = rs.getString("username");
				String display_name = rs.getString("display_name");
				String contact = rs.getString("contact");
				String email = rs.getString("email");
				String pwd = rs.getString("password");
				
				return new Buyer(id, uname, display_name, contact, email, pwd);
				
			}else {
				return null;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	
	public static boolean registerBuyer(String username, String display_name, String email, String contact_no, String password) {
		
		// Setup database connection
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(dbconfig.databaseURL, dbconfig.user, dbconfig.password);

			String sql = "INSERT INTO `onlineeshopingstore`.`buyer` VALUES (0, '"+username+"', '"+display_name+"', '"+email+"', '"+contact_no+"', '"+password+"');";
			Statement pst = conn.createStatement();
			int rs = pst.executeUpdate(sql);
			
			if(rs == 1) {
				return true;
			}
			
			return false;
			
		} catch(Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}

}
