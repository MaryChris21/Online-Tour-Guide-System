<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Tour Guides</title>
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
        .tour-guide-container {
            max-width: 1200px;
            margin: 40px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .tour-guide-header {
            text-align: center;
            margin-bottom: 20px;
        }
        .tour-guide-header h2 {
            font-size: 2.5em;
            color: #333;
        }
        .tour-guide-header p {
            font-size: 1.1em;
            color: #666;
        }
        .tour-guide-block-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 20px;
        }
        .tour-guide-block {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            transition: transform 0.3s;
        }

        .tour-guide-block img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }
        .tour-guide-block-content {
            padding: 20px;
            text-align: center;
        }
        .tour-guide-block-title {
            margin: 10px 0;
            font-size: 1.5em;
            color: #333;
        }
        .tour-guide-block-description {
            font-size: 1em;
            color: #666;
            line-height: 1.6;
        }
        .tour-guide-block-description strong {
            color: #333;
        }
        footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 10px 0;
            margin-top: 20px;
        }
    </style>
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
    
    <div class="tour-guide-container">
        <div class="tour-guide-header">
            <h2>Our Tour Guides</h2>
            <p>Meet our professional and friendly tour guides who will ensure you have an unforgettable experience!</p><br>
        </div>
        <div class="tour-guide-block-grid">
            <div class="tour-guide-block">
                <img src="images/touguide1.jpg" alt="Guide 1">
                <div class="tour-guide-block-content">
                    <p class="tour-guide-block-title">J. Andrew Walkins</p>
                    <p class="tour-guide-block-description">
                        <strong>NIC:</strong> 19967854625<br>
                        <strong>Age:</strong> 57<br>
                        <strong>Email Address:</strong> andrewal12@gmail.com<br>
                        <strong>Country:</strong> Italy<br>
                        <strong>Phone Number:</strong> +896674513
                    </p>
                </div>
            </div>
            <div class="tour-guide-block">
                <img src="images/touguide2.jpg" alt="Guide 2">
                <div class="tour-guide-block-content">
                    <p class="tour-guide-block-title">H. Jonathan Bailey</p>
                    <p class="tour-guide-block-description">
                        <strong>NIC:</strong> 1674527856<br>
                        <strong>Age:</strong> 32<br>
                        <strong>Email Address:</strong> jonathan32@gmail.com<br>
                        <strong>Country:</strong> United Kingdom<br>
                        <strong>Phone Number:</strong> +756289561
                    </p>
                </div>
            </div>
            <div class="tour-guide-block">
                <img src="images/touguide3.jpg" alt="Guide 3">
                <div class="tour-guide-block-content">
                    <p class="tour-guide-block-title">F. Rege Paul</p>
                    <p class="tour-guide-block-description">
                        <strong>NIC:</strong> 1568267514<br>
                        <strong>Age:</strong> 30<br>
                        <strong>Email Address:</strong> regepaul56@gmail.com<br>
                        <strong>Country:</strong> France<br>
                        <strong>Phone Number:</strong> +567245645
                    </p>
                </div>
            </div>
            <div class="tour-guide-block">
                <img src="images/touguide4.jpg" alt="Guide 4">
                <div class="tour-guide-block-content">
                    <p class="tour-guide-block-title">I. Bella Hadid</p>
                    <p class="tour-guide-block-description">
                        <strong>NIC:</strong> 1785614534<br>
                        <strong>Age:</strong> 29<br>
                        <strong>Email Address:</strong> bella34@gmail.com<br>
                        <strong>Country:</strong> Germany<br>
                        <strong>Phone Number:</strong> +236756345
                    </p>
                </div>
            </div>
            <div class="tour-guide-block">
                <img src="images/touguide5.jpg" alt="Guide 4">
                <div class="tour-guide-block-content">
                    <p class="tour-guide-block-title">B. Micheal Jordan</p>
                    <p class="tour-guide-block-description">
                        <strong>NIC:</strong> 1674513456<br>
                        <strong>Age:</strong> 35<br>
                        <strong>Email Address:</strong> michealb22@gmail.com<br>
                        <strong>Country:</strong> Greece<br>
                        <strong>Phone Number:</strong> +67856438896
                    </p>
                </div>
            </div>
            <div class="tour-guide-block">
                <img src="images/touguide6.jpg" alt="Guide 5">
                <div class="tour-guide-block-content">
                    <p class="tour-guide-block-title">K. Sabrina Keugon</p>
                    <p class="tour-guide-block-description">
                        <strong>NIC:</strong> 20026752675<br>
                        <strong>Age:</strong> 25<br>
                        <strong>Email Address:</strong> sabrina234@gmail.com<br>
                        <strong>Country:</strong> Switzerland<br>
                        <strong>Phone Number:</strong> +126758897
                    </p>
                </div>
            </div>
        </div>
    </div>
    
    <footer>
        <p>&copy; 2024 Ambani Travels&Tours. All rights reserved.</p>
    </footer>
</body>
</html>
