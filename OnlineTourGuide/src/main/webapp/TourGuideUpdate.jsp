<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Tour Guide</title>
<link rel="stylesheet" type="text/css" href="signup.css">
<script src="InsertValidations.js"></script>
</head>
<body>
<%
	String tid = request.getParameter("tid");
	String tname  = request.getParameter("tname");
	String tnic = request.getParameter("tnic");
	String tage = request.getParameter("tage");
	String taddress = request.getParameter("taddress");
	String tcountry= request.getParameter("tcountry");
	String tphnum=request.getParameter("tphnum");
%>

<div class='container'>
<form action= "updateT" method="post">
   <div class='form-group'>
	<label for="tid">TID</label><br>
	 <input type = "text" name= "tid" value ="<%= tid %>" readonly><br>
	</div>
	<div class='form-group'>
	<label for="tname">Full Name</label><br>
	<input type="text" name="tname" value="<%= tname%>"><br>
	</div>
	<div class='form-group'>
	<label for="tnic">NIC Number</label><br>
    <input type="text" name="tnic" value="<%= tnic%>"><br>
	</div>
	<div class='form-group'>
	<label for="tage">Age</label><br>
    <input type="text" name="tage" value="<%= tage%>"><br>
	</div>
	<div class='form-group'>
	<label for="taddress">Email Address</label><br>
	 <input type="text" name="taddress" value="<%= taddress%>"><br>
	</div>
	<div class='form-group'>
	<label for="tcountry">Country</label>
	 <input type="text" name="tcountry" value="<%= tcountry%>"><br>
	</div>
	<div class='form-group'>
	<label for="tphnum">Contact Number</label><br>
	 <input type="text" name="tphnum" value="<%= tphnum%>"><br>
	</div>
    
    <div class='form-group'>
	<input type ="submit" name="submit" value="Update">
	</div>
 </form>
 </div>
</body>
</html>

