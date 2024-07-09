package com.tourpackages;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/insertpackages")
public class insertpackages extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String ptype = request.getParameter("ptype");
		String country = request.getParameter("country");
		String price = request.getParameter("price");
		String description = request.getParameter("description");
		
		
		boolean isTrue;
		
		isTrue =TourPackagesDBUtil.insertTourPackages(ptype, country, price, description);
		
		if(isTrue == true) {
			List<TourPackages> tourpackageDetails = TourPackagesDBUtil.getAllTourpackages();
			request.setAttribute("tourpackageDetails", tourpackageDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("TableView.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 =request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
