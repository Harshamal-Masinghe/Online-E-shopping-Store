package com.OnlineEShopingStore.Utils;

public class Buyer {
	private int id;
	private String username;
	private String display_name;
	private String contact;
	private String email;
	private String password;
	
	public Buyer(int id, String username, String display_name, String contact, String email, String password) {
		this.id = id;
		this.username = username;
		this.display_name = display_name;
		this.contact = contact;
		this.email = email;
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public String getUsername() {
		return username;
	}

	public String getDisplay_name() {
		return display_name;
	}

	public String getContact() {
		return contact;
	}

	public String getEmail() {
		return email;
	}

	public String getPassword() {
		return password;
	}
	
	
}
