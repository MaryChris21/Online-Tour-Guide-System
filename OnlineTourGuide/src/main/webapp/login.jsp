<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="LoginStyles.css">
<script src="loginJS.js"></script>
</head>
<body>
    <div class="container">
        <h2>Login</h2>

        <c:if test="${not empty errorMessage}">
            <div class="error-message" style="color: red;">
                ${errorMessage}
            </div>
        </c:if>

        <form action="LoginServlet" method="post">
            <div class="input-group">
                <label for="uid">User name *</label>
                <input type="text" name="uid" id="uid" required>
            </div>
            
            <div class="input-group">
                <label for="pass">Password *</label>
                <input type="password" name="pass" id="pass" required>
                <input type="checkbox" onclick="togglePasswordVisibility()"> Show Password
            </div>       

            <input type="submit" name="submit" value="Login" class="login-button"> 
        </form>

        <div class="signup-link">
            <p>Don't have an account? <a href="userInsert.jsp">Sign up here</a></p>
        </div>

        <div class="admin-link">
            <p>Are you an admin? <a href="AdminLogin.jsp">Click here</a></p>
        </div>
    </div>
</body>
</html>
