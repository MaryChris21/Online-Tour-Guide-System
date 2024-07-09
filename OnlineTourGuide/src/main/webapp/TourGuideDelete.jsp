<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Tour Guide</title>
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
<h1>Delete Package</h1>

<form action= "deleteT" method ="POST">
    <div class='form-group'> 
	<label for="tid">TID</label><br>
	 <input type = "text" name= "tid" value ="<%= tid %>" readonly><br>
	</div>
	<div class='form-group'>
	<label for="tname">Full Name</label><br>
	 <input type="text" name="tname" value="<%= tname%>" readonly><br>
	</div>
	<div class='form-group'>
	<label for="tnic">NIC Number</label><br>
	 <input type="text" name="tnic" value="<%= tnic%>" readonly><br>
	</div>
	<div class='form-group'>
	<label for="tage">Age</label><br>
	 <input type="text" name="tage" value="<%= tage%>" readonly><br>
	</div>
	<div class='form-group'>
	<label for="taddress">Email Address</label><br>
	 <input type="text" name="taddress" value="<%= taddress%>" readonly><br>
	</div>
	<div class='form-group'>
	<label for="tcountry">Country </label><br>
	<input type="text" name="tcountry" value="<%= tcountry%>" readonly><br>
	</div>
	<div class='form-group'>
	<label for="tphnum">Contact Number</label><br>
	 <input type="text" name="tphnum" value="<%= tphnum%>" readonly><br>
	</div>
	
	<div class='form-group'>
	<input type ="submit" name="submit" value="Delete">
	</div>
</form>
</div>
</body>
</html>

