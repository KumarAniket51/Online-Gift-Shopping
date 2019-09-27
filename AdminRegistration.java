package com.iimt.model;

public class AdminRegistration {
public String name;
public String email;
public String password;
public AdminRegistration() {
	//super();
	// TODO Auto-generated constructor stub
}
public AdminRegistration(String name, String email, String password) {
	//super();
	this.name = name;
	this.email = email;
	this.password = password;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}

}
