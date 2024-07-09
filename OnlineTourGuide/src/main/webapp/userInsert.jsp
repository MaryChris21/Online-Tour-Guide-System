<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create User</title>
    <link rel="stylesheet" type="text/css" href="signup.css">
	<script src="loginJS.js"></script>
    
</head>
<body>
    <div class="container">
        <h2>Create User</h2>
        <form action="insert" method="POST" onsubmit="return validateForm()">
            <div class="form-group">
                <label for="firstname">First Name *</label>
                <input type="text" name="firstname" id="firstname" required>
                <div id="firstname-error" class="error-message"></div>  
            </div>
            
            <div class="form-group">
                <label for="lastname">Last Name *</label>
                <input type="text" name="lastname" id="lastname" required>
                <div id="lastname-error" class="error-message"></div>
            </div>
            
            <div class="form-group">
                <label for="email">Email *</label>
                <input type="email" name="email" id="email" required>
                <div id="email-error" class="error-message"></div>
            </div>
            
            <div class="form-group">
                <label for="phone">Phone Number *</label>
                <input type="text" name="phone" id="phone" required>
                <div id="phone-error" class="error-message"></div>
            </div>
            
            <div class="form-group">
                <label for="uid">User Name *</label>
                <input type="text" name="uid" id="uid" required>
            </div>
            
            <div class="form-group">
                <label for="psw">Password *</label>
                <input type="password" name="psw" id="psw" required>
                <input type="checkbox" onclick="showPassword()"> Show Password
            </div>
            <div class="form-group">
                <input type="submit" name="submit" value="Create User">
            </div>
        </form>
    </div>
    
<script>
    function validateForm() {
        var firstName = document.getElementById("firstname").value.trim();
        var lastName = document.getElementById("lastname").value.trim();
        var email = document.getElementById("email").value.trim();
        var phone = document.getElementById("phone").value.trim();

        var firstNamePattern = /^[a-zA-Z]+$/;
        var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        var phonePattern = /^\d{10}$/;

        var isValid = true;

        if (!firstNamePattern.test(firstName)) {
            document.getElementById("firstname-error").innerText = "Only alphabetical characters are allowed";
            isValid = false;
        } else {
            document.getElementById("firstname-error").innerText = "";
        }

        if (!firstNamePattern.test(lastName)) {
            document.getElementById("lastname-error").innerText = "Only alphabetical characters are allowed";
            isValid = false;
        } else {
            document.getElementById("lastname-error").innerText = "";
        }

        if (!emailPattern.test(email)) {
            document.getElementById("email-error").innerText = "Invalid email address";
            isValid = false;
        } else {
            document.getElementById("email-error").innerText = "";
        }

        if (!phonePattern.test(phone)) {
            document.getElementById("phone-error").innerText = "Phone number must be a 10-digit number";
            isValid = false;
        } else {
            document.getElementById("phone-error").innerText = "";
        }

        return isValid;
    }


</script>
    
</body>
</html>
