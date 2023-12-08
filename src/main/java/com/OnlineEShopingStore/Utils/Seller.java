package com.OnlineEShopingStore.Utils;

public class Seller {
	// Declare Seller Fields here
	private int id;
	private String username;
	private String display_name;
	private String email;
	private String contact;
	private String address;
	private String password;
	
	public Seller(int id, String username, String display_name, String email, String contact, String address, String password) {
		this.id = id;
		this.username = username;
		this.display_name = display_name;
		this.email = email;
		this.contact = contact;
		this.address = address;
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

	public String getEmail() {
		return email;
	}
	
	public String getContact() {
		return contact;
	}

	public String getAddress() {
		return address;
	}

	public String getPassword() {
		return password;
	}
	
	
}
