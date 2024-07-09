<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Tour Guide</title>
<link rel="stylesheet" type="text/css" href="signup.css">
<script src="InsertValidations.js"></script>
</head>
<body>
<div class="form container">
		<h1>Add New Tour Guide</h1>
		<form action="insertT" method="POST">
			
				<div class="form-group">
					<label for="tname">Full Name</label>
					<input type="text" id="tname" name="tname" required="required">
				</div>
				<div class="form-group">
					<label for="tnic">NIC Number</label>
					<input type="text" id="tnic" name="tnic" required="required">
				</div>
				<div class="form-group">
					<label for="tage">Age</label>
					<input type="text" id="tage" name="tage" required="required">
				</div>
				<div class="form-group">
					<label for="taddress">Email Address</label>
					<input type="text" id="taddress" name="taddress" required="required">
				</div>
				<div class="form-group">
					<label for="tcountry">Country</label>
					<input type="text" id="tcountry" name="tcountry" required="required">
				</div>
				<div class="form-group">
					<label for="tphnum">PhoneNumber</label>
					<input type="text" id="tphnum" name="tphnum" required="required">
				</div>
			
			<div class='form-group'>
			<input type="submit" name="submit" value="Create Tour Guide">
			</div>
		</form>
	</div>

</body>
</html>