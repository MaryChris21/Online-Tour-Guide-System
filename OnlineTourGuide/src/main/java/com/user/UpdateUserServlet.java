package com.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateUserServlet")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public UpdateUserServlet() {
        super();
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("userid");
		String firstname = request.getParameter("Fname");
		String lastname = request.getParameter("Lname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
		
		boolean isTrue;
		
		isTrue = UserDBUtil.updateuser(id, firstname, lastname, email, phone, username, password);
		
		if(isTrue == true) {
			
			List<User> userDetails = UserDBUtil.getUserDetails(id);
			request.setAttribute("userDetails", userDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}
		else {
			List<User> userDetails = UserDBUtil.getUserDetails(id);
			request.setAttribute("userDetails", userDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}

	}

}
