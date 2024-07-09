package com.tourpackages;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeletepackageServlet")
public class DeletepackageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String pid = request.getParameter("pid");
		boolean isTrue;
		
		isTrue = TourPackagesDBUtil.deletePackage(pid);
		
		if(isTrue == true) {
			List<TourPackages> tourpackageDetails= TourPackagesDBUtil.getAllTourpackages();
			request.setAttribute("tourpackageDetails", tourpackageDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("TableView.jsp");
			dispatcher.forward(request, response);
			
		}
		else {
			List<TourPackages> tourpackageDetails= TourPackagesDBUtil.getAllTourpackages();
			request.setAttribute("tourpackageDetails", tourpackageDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("TableView.jsp");
			dispatcher.forward(request, response);
		}
	}

}