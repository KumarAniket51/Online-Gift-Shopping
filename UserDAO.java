package com.iimt.dao;

import com.iimt.model.AdminRegistration;
import com.iimt.model.CheckOut;
import com.iimt.model.Contact;
import com.iimt.model.UserRegistration;

public interface UserDAO {
public String insertUserDetais(UserRegistration user);
public String loginUser(UserRegistration user);
public String checkout(CheckOut out);
public String contact(Contact con);
public String admin(AdminRegistration adm);
public String adminValid(AdminRegistration adm);
}
