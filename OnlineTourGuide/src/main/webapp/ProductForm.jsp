<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Payment Bill</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        * {
            margin: 0;
            padding: 0;
        }
        header {
            position: relative;
            background-color: #333;
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
            overflow: auto;
        }
        header h1 {
            color: white;
            font-family: 'League Spartan', sans-serif;
            float: left;
            margin: 0;
        }
        .nav {
            font-size: 20px;
            font-family: Arial, Helvetica, sans-serif;
            width: auto;
            float: left;
            margin-left: 20px;
        }
        nav {
            padding: 10px;
        }
        nav a {
            color: #ddd;
            text-decoration: none;
        }
        nav ul {
            padding: 0;
        }
        nav ul li {
            list-style: none;
            display: inline;
            padding-inline: 30px;
        }
        .button {
            background-color: #444;
            color: #fff;
            padding: 10px 20px;
            text-decoration: none;
            float: right;
            position: absolute;
            top: 10px;
            right: 10px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            background-color: #fff;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
        }
        .form-group input, .form-group select {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }
        .form-group input[type="submit"] {
            background-color: #444;
            color: white;
            border: none;
            cursor: pointer;
        }
        .form-group input[type="submit"]:hover {
            background-color 0.3s ease;
            opacity: 0.9;
        }
        .counter {
            display: flex;
            align-items: center;
        }
        .counter button {
            width: 30px;
            height: 30px;
            font-size: 18px;
            text-align: center;
        }
        .counter input {
            width: 50px;
            text-align: center;
            font-size: 18px;
            margin: 0 5px;
        }
        .total-price {
            margin-top: 20px;
        }
        footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 10px 0;
            margin-top: 20px;
        }
    </style>
    <script>
        function updateCounter(operation) {
            var counterInput = document.getElementById("personCount");
            var currentValue = parseInt(counterInput.value);
            if (operation === 'increment' && currentValue < 10) {
                counterInput.value = currentValue + 1;
            } else if (operation === 'decrement' && currentValue > 1) {
                counterInput.value = currentValue - 1;
            }
            updateTotal();
        }

        function updateTotal() {
            var counterInput = document.getElementById("personCount");
            var currentValue = parseInt(counterInput.value);
            var pricePerPerson = parseFloat(document.getElementById("pricePerPerson").value);
            var totalAmount = document.getElementById("totalamount");

            totalAmount.value = "$" + (currentValue * pricePerPerson).toFixed(2);
        }

        function updateButtonState() {
            var counterInput = document.getElementById("personCount");
            var currentValue = parseInt(counterInput.value);
            var showPriceButton = document.getElementById("showPriceButton");

            showPriceButton.disabled = (currentValue < 1 || currentValue > 10);
        }

        window.onload = function() {
            updateButtonState();
            updateTotal();
        }
        function handleFormSubmit(event) {
            event.preventDefault();
            alert("Successful payment, please check email for details.");
            window.location.href = "Homepage.jsp"; 
        }
    </script>
</head>

<body>
    <header>
        <h1>Ambani Travels&Tours</h1>
        <a href="login.jsp" class="button">Login</a>
        <nav class="nav">
            <ul>
                <li><a href="Homepage.jsp">Home page</a></li>
                <li><a href="ProductPage.jsp">Packages</a></li>
                <li><a href="TourGuides.jsp">Tour Guides</a></li>
                <li><a href="ContactUs.jsp">Contact Us</a></li>
            </ul>
        </nav>
    </header>
    <div class="container">
        <h2>Payment Bill</h2><br>
        <form action="ProcessPayment.jsp" method="post" onsubmit="handleFormSubmit(event)">
            <div class="form-group">
                <div class="counter">
                    <label for="personCount">Persons</label>
                    <button type="button" onclick="updateCounter('decrement')">-</button>
                    <input type="text" id="personCount" value="1" readonly />
                    <button type="button" onclick="updateCounter('increment')">+</button>
                </div>
            </div>
            <div>Total number of people (Min: 1, Max: 10)</div><br>
            <div class="form-group">
                <label for="amount">Total Amount:</label>
                <input type="text" id="totalamount" name="totalamount" readonly required>
            </div>
            <div class="form-group">
                <label for="fullname">Full Name:</label>
                <input type="text" id="fullname" name="fullname" required>
            </div>
            <div class="form-group">
                <label for="country">Country:</label>
                <input type="text" id="country" name="country" required>
            </div>
            <div class="form-group">
                <label for="postalcode">Country Code:</label>
                <input type="text" id="postalcode" name="postalcode" required>
            </div>
            <div class="form-group">
                <label for="phoneno">Phone No:</label>
                <input type="text" id="phoneno" name="phoneno" required>
            </div>
            <div class="form-group">
                <label for="paymentDate">Payment Date:</label>
                <input type="date" id="paymentDate" name="paymentDate" required>
            </div>
            <div class="form-group">
                <label for="paymentMethod">Payment Method:</label>
                <select id="paymentMethod" name="paymentMethod" required>
                    <option value="creditCard">Credit Card</option>
                    <option value="debitCard">Debit Card</option>
                    <option value="paypal">PayPal</option>
                </select>
            </div>
            <div class="form-group">
                <label for="cardNumber">Card Number:</label>
                <input type="text" id="cardNumber" name="cardNumber">
            </div>
            <div class="form-group">
                <label for="expiryDate">Expiry Date:</label>
                <input type="text" id="expiryDate" name="expiryDate" placeholder="MM/YY">
            </div>
            <div class="form-group">
                <label for="cvv">CVV:</label>
                <input type="text" id="cvv" name="cvv">
            </div>
            <div class="form-group">
                <input type="submit" value="Submit Payment">
            </div>

            <% 
                String packageType = request.getParameter("package");
                int pricePerPerson;
                if ("gold".equals(packageType)) {
                    pricePerPerson = 10000;
                } else if ("silver".equals(packageType)) {
                    pricePerPerson = 5000;
                } else {
                    pricePerPerson = 10000; 
                }
            %>
            <!-- Hidden input to store price per person -->
            <input type="hidden" id="pricePerPerson" value="<%= pricePerPerson %>">
        </form>
    </div>
    <footer>
        <p>&copy; 2024 Ambani Travels&Tours. All rights reserved.</p>
    </footer>
</body>
</html>
