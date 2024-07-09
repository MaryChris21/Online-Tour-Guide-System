<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update User Details</title>
    <link rel="stylesheet" type="text/css" href="signup.css">
</head>

<body>

   <%
        String id = request.getParameter("id");
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String username = request.getParameter("uname");
        String password = request.getParameter("pass");
   
   %>

    <div class="container">
    <h2>Update User Details</h2>
 
	<form action = "update" method = "POST">
	    
     	<div class="form-group">
            <label for="userid">User ID</label>
            <input type="text" id="userid" name="userid" value="<%= id %>" readonly>
        </div>
      	<div class="form-group">
            <label for="Fname">First Name</label>
            <input type="text" id="Fname" name="Fname" value="<%= firstname %>">
        </div>
      	<div class="form-group">
            <label for="Lname">Last Name</label>
            <input type="text" id="Lname" name="Lname" value="<%= lastname %>">
        </div>
      	<div class="form-group">
            <label for="email">Email</label>
            <input type="text" id="email" name="email" value="<%= email %>">
        </div>
      	<div class="form-group">
            <label for="phone">Phone</label>
            <input type="text" id="phone" name="phone" value="<%= phone %>">
        </div>
      	<div class="form-group">
            <label for="uname">User Name</label>
            <input type="text" id="uname" name="uname" value="<%= username %>">
        </div>
      	<div class="form-group">
            <label for="pass">Password</label>
            <input type="text" id="pass" name="pass" value="<%= password %>">
        </div>
        
        <div class="form-group">
                <input type="submit" name="submit" value="Submit">
        </div>
      
	</form>
</div>
</body>
</html>