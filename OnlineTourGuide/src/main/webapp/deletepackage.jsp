<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Tour Package</title>
<title>Update Tour Packages</title>
<link rel="stylesheet" type="text/css" href="signup.css">
<script src="InsertValidations.js"></script>
</head>
<body>

<%
	String pid = request.getParameter("pid");
	String ptype  = request.getParameter("ptype");
	String country = request.getParameter("country");
	String price = request.getParameter("price");
	String description = request.getParameter("description");
%>

<div class='container'>
<h2> Delete Tour Package</h2>

<form action= "deleteP" method ="POST">
    <div class='form-group'> 
	<label for='pid'>PID</label><br>
	<input type = "text" name= "pid" id="pid" value ="<%= pid %>" readonly><br>
	</div>
	<div class='form-group'>
	<label for='packagetype'>Package Type</label><br> 
	<input type="text" name="ptype" id="ptype" value="<%= ptype%>" readonly><br>
	</div>
	<div class='form-group'>
	<label for='country'>Country</label><br> 
	<input type="text" name="country" id="country" value="<%= country%>" readonly><br>
	</div>
	<div class='form-group'>
	<label for='price'>Price </label><br>
	<input type="text" name="price" id="price" value="<%= price%>" readonly><br>
	</div>
	<div class='form-group'>
	<label for='description'>Description</label><br>
	<input type="text" name="description" id="description" value="<%= description%>" readonly><br>
	</div>
    <div class='form-group'>
	<input type ="submit" name="submit" value="Delete">
	</div>
</form>
</div>

</body>
</html>