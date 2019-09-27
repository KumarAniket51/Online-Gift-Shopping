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

import com.iimt.model.UserRegistration;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		//
		UserRegistration user=new UserRegistration();
		//set the data to user object
		user.setEmail(email);
		user.setPassword(password);
		
		
		
		UserDAO dao=new UserDAOImpl();
		String res=dao.loginUser(user);
		//dispatch
		//PrintWriter out = response.getWriter();
		//out.println(res);
		RequestDispatcher rd=null;
		if(res.equals("SUCCESS")) {
			//out.println("success");
			request.setAttribute("msg", "login Success");
			rd=request.getRequestDispatcher("success.html");
		}
		else {
			//out.print("Fail");
			request.setAttribute("msg", "login Failed");
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
