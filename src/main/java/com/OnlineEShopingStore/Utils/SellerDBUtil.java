package com.OnlineEShopingStore.Utils;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class SellerDBUtil {

	public static Seller validateSeller(String username, String password){
	
		try {
			// Setup database connection
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(dbconfig.databaseURL, dbconfig.user, dbconfig.password);
			
			//Changed
			String sql = "SELECT * FROM onlineeshopingstore.seller WHERE username='"+username+"' AND password='"+password+"';";	
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery(sql);	
			
			// True if the new current row is valid; false if there are no more rows
			if(rs.next() == true) {
				int id = rs.getInt("id");
				String uname = rs.getString("username");
				String display_name = rs.getString("display_name");
				String email = rs.getString("email");
				String contact = rs.getString("contact");
				String address = rs.getString("address");
				String pwd = rs.getString("password");
				
				return new Seller(id, uname, display_name, email, contact, address, pwd);
				
			}else {
				return null;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	
	public static boolean registerSeller(String username, String display_name, String email, String contact_no, String address, String password) {
		
		// Setup database connection
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(dbconfig.databaseURL, dbconfig.user, dbconfig.password);

			String sql = "INSERT INTO onlineeshopingstore.seller VALUES (0, '"+username+"', '"+display_name+"', '"+email+"', '"+contact_no+"', '"+address+"', '"+password+"');";
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

	
	public static Seller getSeller(int uid) {
		try {
			// Setup database connection
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(dbconfig.databaseURL, dbconfig.user, dbconfig.password);
			
			String sql = "SELECT id, username, display_name, email, contact, address FROM onlineeshopingstore.seller WHERE id='"+uid+"';";	
			System.out.println(sql);
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery(sql);	
			
			// True if the new current row is valid; false if there are no more rows
			if(rs.next() == true) {
				int id = rs.getInt("id");
				String uname = rs.getString("username");
				String display_name = rs.getString("display_name");
				String email = rs.getString("email");
				String contact = rs.getString("contact");
				String address = rs.getString("address");
				
				return new Seller(id, uname, display_name, email, contact, address, null);
				
			}else {
				return null;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	
	public static boolean updateSeller(boolean isPasswordGiven,String display_name, String email, String contact_no, String address, String password, int seller_id) {
		// Setup database connection
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(dbconfig.databaseURL, dbconfig.user, dbconfig.password);
			
			String sql = "";
			
			if(isPasswordGiven) {
				sql = "UPDATE onlineeshopingstore.seller SET display_name='"+display_name+"', email='"+email+"', contact='"+contact_no+"', address='"+address+"', password='"+password+"' WHERE id="+seller_id+";";
			}else {
				sql = "UPDATE onlineeshopingstore.seller SET display_name='"+display_name+"', email='"+email+"', contact='"+contact_no+"', address='"+address+"' WHERE id="+seller_id+";";
			}
			Statement pst = conn.createStatement();
			int rs = pst.executeUpdate(sql);

			if (rs == 1) {
				return true;
			}

			return false;

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

}
