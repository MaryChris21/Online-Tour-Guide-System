package com.tourpackages;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.user.DBConnect;

public class TourPackagesDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	public static boolean insertTourPackages(String ptype, String country, String price, String description) {
		
		boolean isSuccess = false;
		

		try {
			
			con = DBConnect.getConnection();
			Statement stmt = con.createStatement();
			String sql = "insert into package values (0, '"+ptype+"' ,'"+country+"' ,'"+price+"' ,'"+description+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<TourPackages> getAllTourpackages() {
        List<TourPackages> tourpackageList = new ArrayList<>();
		
        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String sql = "SELECT * FROM package";
            rs = stmt.executeQuery(sql);
            
            while (rs.next()) {
                String pid = rs.getString(1);
                String ptype = rs.getString(2);
                String country = rs.getString(3);
                String price = rs.getString(4);
                String description = rs.getString(5);
                
                TourPackages tourpackage = new TourPackages(pid,ptype,country,price,description);
                tourpackageList.add(tourpackage);
                
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

        return tourpackageList;
    }
	
public static boolean updatepackage(String pid,String ptype, String country, String price, String description) {
		
		int convID = Integer.parseInt(pid);
		boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "UPDATE package set ptype='"+ptype+"', country='"+country+"', price='"+price+"', description='"+description+"' where pid='"+convID+"'";
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

   public static List<TourPackages> getPackageDetails(int Pid){
	   
	   ArrayList<TourPackages> pack = new ArrayList<>();
	   
	   try {
		   
		   con = DBConnect.getConnection();
		   stmt = con.createStatement();
		   String sql = "select * from package where pid ='"+Pid+"'";
		   rs = stmt.executeQuery(sql);
		   
		   while(rs.next()) {
			   String pid = rs.getString(1);
			   String ptype = rs.getString(2);
			   String country = rs.getString(3);
			   String price = rs.getString(4);
			   String description = rs.getString(5);
			   
			   TourPackages tp = new TourPackages(pid, ptype, country, price, description);
			   pack.add(tp);
			   
		   }
	   }
	   catch(Exception e){
		   e.printStackTrace();
		   
	   }
	   
	   return pack;
   }
   
   public static boolean deletePackage(String pid) {
	   
	   int convID = Integer.parseInt(pid);
	   boolean isSuccess=false;
	   
	   try {
		   
		   con = DBConnect.getConnection();
		   stmt = con.createStatement();
		   String sql = "DELETE from package where pid='"+convID+"'";
		   int rs = stmt.executeUpdate(sql);
		   
		   if( rs > 0) {
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
