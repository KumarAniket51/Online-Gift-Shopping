package com.iimt.model;

public class CheckOut {
private String Name;
private String Email;
private String Address;
private String City;
private String State;
private String PinCode;
public CheckOut() {
	//super();
	// TODO Auto-generated constructor stub
}
public CheckOut(String name, String email, String address, String city, String state, String pinCode) {
	//super();
	Name = name;
	Email = email;
	Address = address;
	City = city;
	State = state;
	PinCode = pinCode;
}
public String getName() {
	return Name;
}
public void setName(String name) {
	Name = name;
}
public String getEmail() {
	return Email;
}
public void setEmail(String email) {
	Email = email;
}
public String getAddress() {
	return Address;
}
public void setAddress(String address) {
	Address = address;
}
public String getCity() {
	return City;
}
public void setCity(String city) {
	City = city;
}
public String getState() {
	return State;
}
public void setState(String state) {
	State = state;
}
public String getPincode() {
	return PinCode;
}
public void setPincode(String pincode) {
	PinCode = PinCode;
}

}
