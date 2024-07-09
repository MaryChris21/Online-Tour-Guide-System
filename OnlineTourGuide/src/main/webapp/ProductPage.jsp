<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Packages</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }
        header {
            background-color: #333;
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
            overflow: auto;
        }
        header h1 {
            color: white;
            font-family: League Spartan;
            float: left;
            margin: 0;
        }
        .nav {
            font-size: 20px;
            font-family: Arial, Helvetica, sans-serif;
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
        .featured-image-block-grid-header h1,
        .featured-image-block-grid-header h2,
        .featured-image-block-grid-header p {
            text-align: center;
        }
        .featured-image-block-grid {
            padding: 20px;
            flex: 1; /* Allows the grid to expand and push the footer down */
        }
        .featured-image-block-grid-header {
            margin-bottom: 20px;
        }
        .featured-image-block {
            margin-bottom: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .featured-image-block img {
            width: 100%;
            height: auto;
            display: block;
            border-top-left-radius: 5px;
            border-top-right-radius: 5px;
        }
        .featured-image-block-content {
            padding: 15px;
            text-align: center;
        }
        .featured-image-block-title {
            margin-top: 10px;
            font-size: 1.2em;
            color: #333;
        }
        .featured-image-block-description {
            font-size: 0.9em;
            color: #666;
        }
        .row {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
        }
        .column {
            flex: 1 1 30%;
            max-width: 30%;
            box-sizing: border-box;
            padding: 10px;
        }
        @media (max-width: 768px) {
            .column {
                flex: 1 1 45%;
                max-width: 45%;
            }
        }
        @media (max-width: 480px) {
            .column {
                flex: 1 1 100%;
                max-width: 100%;
            }
        }
        .package {
            border: 1px solid #ddd;
            padding: 15px;
            margin: 15px 0;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-decoration: none; /* Ensure text is not underlined */
            display: block; /* Make the entire block clickable */
            color: inherit; /* Inherit text color */
        }
        .gold {
            background-color: #ffd700;
        }
        .silver {
            background-color: #c0c0c0;
        }
        .bronze {
            background-color: #cd7f32;
        }
        .title {
            font-size: 24px;
            font-weight: bold;
            color: #333;
        }
        .details {
            margin-top: 10px;
        }
        .price {
            font-size: 18px;
            color: #b12704;
            margin-top: 10px;
        }
        footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 10px 0;
            margin-top: auto; /* Pushes the footer to the bottom */
        }
    </style>
</head>
<body>
    <header>
        <h1>Ambani Travels & Tours</h1>
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

    <div class="featured-image-block-grid">
        <div class="featured-image-block-grid-header">
            <h2>Our Tour Packages</h2>
            <h1>France</h1>
            <p>Choose from our exclusive tour packages designed for every type of traveler.</p>
        </div>
        <div class="row">
            <div class="column">
                <a href="ProductForm.jsp" class="package gold">
                    <div class="title">Gold Package<br> Ultimate Luxury Experience</div>
                    <div class="details">
                        <strong>Exotic European Extravaganza</strong><br>
                        <strong>Duration:</strong> 14 Days / 13 Nights<br>
                        <strong>Destinations:</strong> Paris, Versailles, Normandy, Brittany<br>
                        <strong>Inclusions:</strong>
                        <ul>
                            <li>First-class airfare</li>
                            <li>5-star luxury accommodations</li>
                            <li>Private guided tours</li>
                            <li>Gourmet dining experiences</li>
                            <li>VIP access to attractions</li>
                            <li>Personal concierge service</li>
                            <li>All transfers in a private luxury vehicle</li>
                            <li>Travel insurance</li>
                        </ul>
                        <div class="price">Price: $10,000 per person</div>
                    </div>
                </a>
            </div>

            <div class="column">
                <a href="ProductForm.jsp" class="package silver">
                    <div class="title">Silver Package<br> Comfort and Style</div>
                    <div class="details">
                        <strong>Enchanting France Adventure</strong><br>
                        <strong>Duration:</strong> 10 Days / 9 Nights<br>
                        <strong>Destinations:</strong> Loire Valley, Burgundy, Corsica<br>
                        <strong>Inclusions:</strong>
                        <ul>
                            <li>Economy class airfare</li>
                            <li>4-star hotel accommodations</li>
                            <li>Semi-private guided tours</li>
                            <li>Daily breakfast and select dinners</li>
                            <li>Entrance fees to major attractions</li>
                            <li>Public transportation passes</li>
                            <li>Local products as part of tour</li>
                            <li>Travel insurance</li>
                            
                        </ul>
                        <div class="price">Price: $5,000 per person</div>
                    </div>
                </a>
            </div>

            <div class="column">
                <a href="ProductForm.jsp" class="package bronze">
                    <div class="title">Bronze Package<br> Budget-Friendly Adventures</div>
                    <div class="details">
                        <strong>Classic France Road Trip</strong><br>
                        <strong>Duration:</strong> 7 Days / 6 Nights<br>
                        <strong>Destinations:</strong> French Riviera, The Alps<br>
                        <strong>Inclusions:</strong>
                        <ul>
                            <li>Budget airfare</li>
                            <li>3-star hotel accommodations</li>
                            <li>Group tours</li>
                            <li>Daily breakfast</li>
                            <li>Entrance fees to select attractions</li>
                            <li>Public transportation passes</li>
                            <li>Small souvenir as part of tour</li>
                            <li>Travel insurance</li>
                        </ul>
                        <div class="price">Price: $2,000 per person</div>
                    </div>
                </a>
            </div>
        </div>
    </div>

    <footer>
        <p>&copy; 2024 Ambani Travels & Tours. All rights reserved.</p>
    </footer>
</body>
</html>