package com.iimt.model;

public class UserRegistration {
private String name;
private String email;
private String password;
private String mobileNo;
public UserRegistration() {
	//super();
	// TODO Auto-generated constructor stub
}
public UserRegistration(String name, String email, String password, String mobileNo) {
	//super();
	this.name = name;
	this.email = email;
	this.password = password;
	this.mobileNo = mobileNo;
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
public String getMobileNo() {
	return mobileNo;
}
public void setMobileNo(String mobileNo) {
	this.mobileNo = mobileNo;
}

}
