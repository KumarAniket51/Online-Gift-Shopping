package com.iimt.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.iimt.dao.UserDAO;
import com.iimt.dao.UserDAOImpl;
import com.iimt.model.CheckOut;
import com.iimt.model.UserRegistration;

/**
 * Servlet implementation class CheckOutController
 */
@WebServlet("/CheckOutController")
public class CheckOutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckOutController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Name=request.getParameter("Name");
		String Email=request.getParameter("Email");
		String Address=request.getParameter("Address");
		String City=request.getParameter("City");
		String State=request.getParameter("State");
		
		String Pincode=request.getParameter("PinCode");
		
		CheckOut out=new CheckOut();
		out.setName(Name);
		out.setEmail(Email);
		out.setAddress(Address);
		out.setCity(City);
		out.setState(State);
		out.setPincode(Pincode);
		UserDAO dao=new UserDAOImpl();
		String res=dao.checkout(out);
		RequestDispatcher rd=null;
		if(res.equals("SUCCESS")) {
			//out.println("success");
			request.setAttribute("msg", "Order  Success");
			rd=request.getRequestDispatcher("success.html");
		}
		else {
			//out.print("Fail");
			request.setAttribute("msg", "Order Failed");
		rd=request.getRequestDispatcher("failed.html");
		}
		rd.forward(request, response);
	}

		

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
