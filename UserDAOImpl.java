package com.iimt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.iimt.dbutil.MyConnection;
import com.iimt.model.AdminRegistration;
import com.iimt.model.CheckOut;
import com.iimt.model.Contact;
import com.iimt.model.UserRegistration;


public class UserDAOImpl implements UserDAO {
	 private Connection conn=new MyConnection().getConn();
	@Override
	public String insertUserDetais(UserRegistration user) {
		String res = "FAIL";
		String sql = "INSERT INTO userregistration (NAME,EMAIL,PASSWORD,MOBILENO) VALUES(?,?,?,?)";
		PreparedStatement ps=null;
		try {
			
			// Statement Creation
			ps = (PreparedStatement) conn.prepareStatement(sql); 
			// Set The parameter value7
			ps.setString(1, user.getName());
			ps.setString(2, user.getEmail());
			ps.setString(3, user.getPassword());
			ps.setString(4, user.getMobileNo());
		
			// Execute the statement
			int r = ps.executeUpdate();
			if (r > 0) {
				res = "SUCCESS";
			}
		} catch (SQLException e) {
			System.out.println(e);
		}
		return res;
	}

	@Override
	public String loginUser(UserRegistration user) {
		String res="fail";
	     String sql="SELECT EMAIL,PASSWORD FROM USER_REGISTRATION WHERE EMAIL=? AND PASSWORD=?";
	     ResultSet rs=null;
	     PreparedStatement ps = null; 
			try {
				
				// Statement Creation
				ps = (PreparedStatement) conn.prepareStatement(sql); 
				// Set The parameter value7
				ps.setString(1, user.getEmail());
				ps.setString(2, user.getPassword());
				// Execute the statement
				ResultSet r = ps.executeQuery();
				while (r.next()) {
					res = "SUCCESS";
					
				}
			} catch (SQLException e) {
				System.out.println(e);
			}
			return res;
	}

	@Override
	public String checkout(CheckOut out) {
		String res = "FAIL";
		String sql = "INSERT INTO CHECKOUT (NAME,EMAIL,ADDRESS,CITY,STATE ,PINCODE) VALUES(?,?,?,?,?,?)";
		PreparedStatement ps=null;
		try {
			
			// Statement Creation
			ps = (PreparedStatement) conn.prepareStatement(sql); 
			// Set The parameter value7
			ps.setString(1, out.getName());
			ps.setString(2, out.getEmail());
			ps.setString(3, out.getAddress());
			ps.setString(4, out.getCity());
			ps.setString(5, out.getState());
			ps.setString(6, out.getPincode());
		
			// Execute the statement
			int r = ps.executeUpdate();
			if (r > 0) {
				res = "SUCCESS";
			}
		} catch (SQLException e) {
			System.out.println(e);
		}
		return res;

	}

	@Override
	public String contact(Contact con) {
		String res = "FAIL";
		String sql = "INSERT INTO CONTACT (NAME,EMAIL,MESSAGE) VALUES(?,?,?)";
		PreparedStatement ps=null;
		try {
			
			// Statement Creation
			ps = (PreparedStatement) conn.prepareStatement(sql); 
			// Set The parameter value7
			ps.setString(1, con.getName());
			ps.setString(2, con.getEmail());
			ps.setString(3, con.getMessage());
		
			// Execute the statement
			int r = ps.executeUpdate();
			if (r > 0) {
				res = "SUCCESS";
			}
		} catch (SQLException e) {
			System.out.println(e);
		}
		return res;
	}

	@Override
	public String admin(AdminRegistration adm) {
		String res = "FAIL";
		String sql = "INSERT INTO admin (NAME,EMAIL,PASSWORD) VALUES(?,?,?)";
		PreparedStatement ps=null;
		try {
			
			// Statement Creation
			ps = (PreparedStatement) conn.prepareStatement(sql); 
			// Set The parameter value7
			ps.setString(1, adm.name);
			ps.setString(2, adm.email);
			ps.setString(3, adm.password);
		
			// Execute the statement
			int r = ps.executeUpdate();
			if (r > 0) {
				res = "SUCCESS";
			}
		} catch (SQLException e) {
			System.out.println(e);
		}
		return res;
	}

	@Override
	public String adminValid(AdminRegistration adm) {
		String res="fail";
	     String sql="SELECT EMAIL,PASSWORD FROM ADMIN WHERE EMAIL=? AND PASSWORD=?";
	     ResultSet rs=null;
	     PreparedStatement ps = null; 
			try {
				
				// Statement Creation
				ps = (PreparedStatement) conn.prepareStatement(sql); 
				// Set The parameter value7
				ps.setString(1, adm.getEmail());
				ps.setString(2, adm.getPassword());
				// Execute the statement
				ResultSet r = ps.executeQuery();
				while (r.next()) {
					res = "SUCCESS";
					
				}
			} catch (SQLException e) {
				System.out.println(e);
			}
			return res;
	}
 
}
