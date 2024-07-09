<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Tour Package</title>
<link rel="stylesheet" type="text/css" href="signup.css">
<script src="InsertValidations.js"></script>
</head>
<body>
  <div class='container'>
  <h2>Create Tour Package</h2>
  
  <form action ="insertP" method="post" onsubmit="return validateForm()">
   <div class='form-group'>
     <label for='packagetype'>Package Type</label><br>
    <select name="ptype" id="ptype" required>
                <option value="" disabled selected>Select a package type</option>
                <option value="Bronze">Bronze</option>
                <option value="Gold">Gold</option>
                <option value="Silver">Silver</option>
            </select><br><br>
            <span id="packageError" class="error">Please select a package type.</span><br>
   </div>
   <div class='form-group'>
     <label for='country'>Country </label><br>
     <input type="text" name="country" id="country" required="required"><br>
   </div>
   <div class='form-group'>
     <label for='price'>Price </label><br>
     <input type="text" name="price" id="price" required="required">
     <small id="priceError" style="color: red; display: none;">Price must contain a dollar sign ($).</small><br>
     
   </div>
   <div class='form-group'>
     <label for='packagetype'>Description </label><br>
     <textarea name="description" id="description" required="required" rows="10"></textarea><br>
   </div>
  
  <div class='form-group'>
     <input type="submit" name="submit" value="Create Package">
  </div>
  
  </form>
  </div>
  
 <script>
  function validateForm() {
    const priceInput = document.getElementById('price');
    const priceError = document.getElementById('priceError');
    const priceValue = priceInput.value;

    if (!priceValue.includes('$')) {
      priceError.style.display = 'block';
      return false;
    } else {
      priceError.style.display = 'none';
      return true;
    }
  }
</script>

</body>
</html>


