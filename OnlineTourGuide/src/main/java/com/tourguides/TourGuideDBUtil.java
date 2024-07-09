package com.tourguides;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.user.DBConnect;

public class TourGuideDBUtil {
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

public static boolean InsertTourguide(String tname, String tnic, String tage, String taddress, String tcountry, String tphnum){
		
		boolean isSuccessful = false;
		String regex = "^\\d{10}V$";
        String regex2 = "^\\d{10}$";
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			if (!taddress.contains("@") && !tnic.matches(regex) && !tphnum.matches(regex2)) return isSuccessful;
			String sql = "insert into tourguides values (0,'"+tname+"','"+tnic+"','"+tage+"','"+taddress+"','"+tcountry+"','"+tphnum+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccessful = true;
			}
			else {
				isSuccessful = false;
			}
		}
		
		catch(Exception e){
			e.printStackTrace();
	
	}
		return isSuccessful;
	}


public static List<TourGuides> getAllTourguides() {
    List<TourGuides> tourguidesList = new ArrayList<>();
	
    try {
        con = DBConnect.getConnection();
        stmt = con.createStatement();
        String sql = "SELECT * FROM tourguides";
        rs = stmt.executeQuery(sql);
        
        while (rs.next()) {
            String tid = rs.getString(1);
            String tname = rs.getString(2);
            String tnic = rs.getString(3);
            String tage = rs.getString(4);
            String taddress = rs.getString(5);
            String tcountry = rs.getString(6);
            String tphnum = rs.getString(7);

            TourGuides tourguide = new TourGuides(tid,tname,tnic,tage,taddress,tcountry,tphnum);
            tourguidesList.add(tourguide);
            
        }
        
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        try {
            if (rs != null) rs.close();
            if (stmt != null) stmt.close();
            if (con != null) con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    return tourguidesList;
}

public static boolean updateTourGuide(String tid,String tname, String tnic, String tage, String taddress, String tcountry,String tphnum) {
	
	int convID = Integer.parseInt(tid);
	boolean isSuccess = false;
	
	try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "UPDATE tourguides set tname='"+tname+"', tnic='"+tnic+"', tage='"+tage+"', taddress='"+taddress+"',tcountry='"+tcountry+"',tphnum='"+tphnum+"' where tid='"+convID+"'";
		int rs = stmt.executeUpdate(sql);
		
		if(rs > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	return isSuccess;
	
}

public static List<TourGuides> getTourGuideDetails(String Tid){
	
	ArrayList<TourGuides> tour = new ArrayList<>();
	
	try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "SELECT * FROM tourguides where tid='"+Tid+"'";
	    rs = stmt.executeQuery(sql);
	
	    while (rs.next()) {
            String tid = rs.getString(1);
            String tname = rs.getString(2);
            String tnic = rs.getString(3);
            String tage = rs.getString(4);
            String taddress = rs.getString(5);
            String tcountry = rs.getString(6);
            String tphnum = rs.getString(7);
            
         TourGuides tg = new TourGuides(tid,tname,tnic,tage,taddress,tcountry,tphnum);
         tour.add(tg);
	    
	}
	    
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	return tour;

}

public static boolean deleteTourGuide(String tid) {
	
	int convID = Integer.parseInt(tid);
	boolean isSuccess = false;
	
	try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "DELETE FROM tourguides where tid='"+convID+"'";
		int rs = stmt.executeUpdate(sql);
		
		if( rs > 0 ) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
	
}
}
