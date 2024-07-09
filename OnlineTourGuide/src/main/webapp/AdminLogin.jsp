<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="LoginStyles.css">
<script src="loginJS.js"></script>


<!-- Include JavaScript for password visibility toggle and validation -->
<script src="adminloginJS.js"></script>
<script>
    function validateLogin() {
        var username = document.getElementById("uid").value;
        var password = document.getElementById("pass").value;

        if (username === "A001" && password === "Admin12#") {
            
            window.location.href = "AdminHomePage.jsp";
            return true;
        } else {
            
            alert("Invalid username or password!");
            return false;
        }
    }
</script>
</head>
<body>
    <div class="container">
        <h2>Login</h2>
    
    <form action="login" method="post" onsubmit="return validateLogin()">
      <div class="input-group">
         <label for="uid">User name *</label>
         <input type="text" name="uid" id="uid" required>
        </div>
        
      <div class="input-group">
          <label for="pass">Password *</label>
          <input type="password" name="pass" id="pass" required>
          <input type="checkbox" onclick="togglePasswordVisibility()"> Show Password
          
      </div>       
        
        <input type="submit" name="submit" value="login" class="login-button"> 
        
    </form>
    </div>
</body>
</html>