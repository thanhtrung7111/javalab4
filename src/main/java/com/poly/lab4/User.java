package com.poly.lab4;

public class User {
	private String user;
	private String password;
	private boolean remember;
	
	
	public User() {
		super();
	}
	public User(String user, String password, boolean remember) {
		this.user = user;
		this.password = password;
		this.remember = remember;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean isRemember() {
		return remember;
	}
	public void setRemember(boolean remember) {
		this.remember = remember;
	}
	
	
}
