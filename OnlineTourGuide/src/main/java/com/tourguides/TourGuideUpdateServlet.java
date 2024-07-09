package com.tourguides;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/TourGuideUpdateServlet")
public class TourGuideUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public TourGuideUpdateServlet() {
		super();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tid=request.getParameter("tid");
		String tname=request.getParameter("tname");
		String tnic=request.getParameter("tnic");
		String tage=request.getParameter("tage");
		String taddress=request.getParameter("taddress");
		String tcountry=request.getParameter("tcountry");
		String tphnum=request.getParameter("tphnum");
		
		boolean isTrue;
		
		
		isTrue = TourGuideDBUtil.updateTourGuide(tid, tname, tnic, tage, taddress, tcountry, tphnum);
		
		if (isTrue==true) {
			List<TourGuides> tourguideDetails = TourGuideDBUtil.getAllTourguides();
			request.setAttribute("tourguideDetails",tourguideDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("TourGuideTable.jsp");
			dis.forward(request, response);
		}
		
		else {
			List<TourGuides> tourguideDetails = TourGuideDBUtil.getAllTourguides();
			request.setAttribute("tourguideDetails",tourguideDetails);
			
			RequestDispatcher dis1 = request.getRequestDispatcher("unsuccess.jsp");
			dis1.forward(request, response);
			
		}
	}

}