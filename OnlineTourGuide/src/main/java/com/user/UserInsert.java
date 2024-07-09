package com.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UserInsert")
public class UserInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

//IOException is thrown when reading from a file, or writing to a file
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String fname = request.getParameter("firstname");
		String lname = request.getParameter("lastname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("uid");
		String password = request.getParameter("psw");
		
		boolean isTrue;
		
		isTrue = UserDBUtil.insertuser(fname, lname, email, phone, username, password);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}
