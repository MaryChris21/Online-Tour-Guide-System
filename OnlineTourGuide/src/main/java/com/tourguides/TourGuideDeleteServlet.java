package com.tourguides;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/TourGuideDeleteServlet")
public class TourGuideDeleteServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String tid = request.getParameter("tid");
		boolean isTrue;
		
		isTrue = TourGuideDBUtil.deleteTourGuide(tid);
	
		if (isTrue == true) {
			List<TourGuides> tourguideDetails = TourGuideDBUtil.getAllTourguides();
			request.setAttribute("tourguideDetails", tourguideDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("TourGuideTable.jsp");
			dispatcher.forward(request,response);
		}
		else {
			/*List<TourGuides> tourguideDetails = TourGuideDBUtil.getAllTourguides();
			request.setAttribute("tourguidesDetails", tourguideDetails);*/
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("unsuccess.jsp");
			dispatcher.forward(request,response);
		}
	}

}
