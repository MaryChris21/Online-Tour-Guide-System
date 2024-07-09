package com.user;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	public static List<User> validate(String userName, String password){
		
		ArrayList<User> use = new ArrayList<>();
		
		//validate
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from user where username='"+userName+"' and password='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String firstname = rs.getString(2);
				String lastname = rs.getString(3);
				String email = rs.getString(4);
				String phone = rs.getString(5);
				String userU = rs.getString(6);
				String passU = rs.getString(7);
				
				User u = new User(id,firstname,lastname,email,phone,userU,passU);
				use.add(u);
				
			}
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return use;
	}
	
	public static boolean insertuser(String fname, String lname, String email, String phone, String username, String password) {
	//boolean method with parameters(returns boolean)
		
		boolean isSuccess = false; //boolean variable, initialised to false
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into user values (0,'"+fname+"','"+lname+"','"+email+"','"+phone+"','"+username+"','"+password+"')";
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
		
		return isSuccess; //try catch is used to check whether the database connection is present
		
	}
	
	public static boolean updateuser(String id, String firstname, String lastname, String email, String phone, String username, String password) {
		
		boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update user set firstname='"+firstname+"', lastname='"+lastname+"', email='"+email+"',phone='"+phone+"', username='"+username+"',password='"+password+"'"
					+ "where id= '"+id+"'";
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
	
	public static List<User> getUserDetails(String uid){
		
		int convertedID = Integer.parseInt(uid);
		
		ArrayList<User> user = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from user where id= '"+convertedID+"' ";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int id = rs.getInt(1);
				String firstname = rs.getString(2);
				String lastname = rs.getString(3);
				String email = rs.getString(4);
				String phone = rs.getString(5);
				String username = rs.getString(6);
				String password = rs.getString(7);
				
				User u = new User(id,firstname,lastname,email,phone,username,password);
				user.add(u);
					
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return user;
		
	}
	

//METHOD for delete in CRUD
	
	public static boolean deleteUser(String id) {
		
		boolean isSuccess = false;

		int convId = Integer.parseInt(id);

		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//SQL for DELETE
			String sql = "delete from user where id='"+convId+"' ";
			int r = stmt.executeUpdate(sql);
			
			//if delete is successful value is 1, otherwise value for boolean is 0
			if (r > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
}