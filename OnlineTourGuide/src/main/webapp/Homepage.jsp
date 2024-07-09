<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Homepage</title>
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
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
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
            font-family: League Spartan;
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
            opacity: 0.9;  
        }
        
        .button:hover {
        	transition: background-color 0.3s ease;
            opacity: 0.9;  
        }
        
        .featured-image-block-grid-header h2,
        .featured-image-block-grid-header p {
      		text-align: center;
	    }
        
        
        .featured-image-block-grid {
            padding: 20px;
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
            flex: 1 1 22%;
            max-width: 22%;
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
        .customer-reviews {
            padding: 40px 20px;
            background-color: #fff;
            border-top: 1px solid #ddd;
            border-bottom: 1px solid #ddd;
            margin-top: 20px;
        }
        .customer-reviews h2 {
            text-align: center;
            margin-bottom: 30px;
            font-size: 1.8em;
            color: #333;
        }
        .review {
            margin-bottom: 30px;
            padding: 20px;
            border-radius: 5px;
            background-color: #f9f9f9;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .review p {
            margin: 0 0 10px;
            color: #666;
        }
        .review-author {
            margin-top: 10px;
            font-weight: bold;
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
    
    <div class="featured-image-block-grid">
        <div class="featured-image-block-grid-header small-10 medium-8 large-7 columns text-center">
            <h2>Top Destinations</h2><br>
            <p>Start planning your travels here with the latest deals for popular destinations!</p>
        </div>
        <div class="row large-up-4 small-up-2">
            <div class="featured-image-block column">
                <a href="ProductPage.jsp">
                    <img src="https://images.unsplash.com/photo-1502602898657-3e91760cbb34?q=80&w=2073&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="France" />
                    <div class="featured-image-block-content">
                        <p class="featured-image-block-title">France</p>
                        <p class="featured-image-block-description">Explore the enchanting landscapes, world-renowned cuisine, and rich cultural heritage of France on a journey through its picturesque cities and charming countryside.</p>
                    </div>
                </a>
            </div>
            <div class="featured-image-block column">
                <a href="#">
                    <img src="https://images.unsplash.com/photo-1580502304784-8985b7eb7260?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Greece" />
                    <div class="featured-image-block-content">
                        <p class="featured-image-block-title">Greece</p>
                        <p class="featured-image-block-description">Discover the ancient ruins, stunning beaches, and vibrant traditions of Greece, where history and modernity blend seamlessly.</p>
                    </div>
                </a>
            </div>
            <div class="featured-image-block column">
                <a href="#">
                    <img src="https://images.unsplash.com/photo-1501952476817-d7ae22e8ee4e?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Germany" />
                    <div class="featured-image-block-content">
                        <p class="featured-image-block-title">Germany</p>
                        <p class="featured-image-block-description">Experience the dynamic mix of historic landmarks, cutting-edge innovation, and diverse cultural experiences in Germany.</p>
                    </div>
                </a>
            </div>
            <div class="featured-image-block column">
                <a href="ItalyPackage.jsp">
                    <img src="https://images.unsplash.com/photo-1520175480921-4edfa2983e0f?q=80&w=2067&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Italy" />
                    <div class="featured-image-block-content">
                        <p class="featured-image-block-title">Italy</p>
                        <p class="featured-image-block-description">Delight in Italy's exquisite cuisine, iconic art, and breathtaking landscapes, from the rolling hills of Tuscany to the romantic canals of Venice.</p>
                    </div>
                </a>
            </div>
            <div class="featured-image-block column">
                <a href="#">
                    <img src="https://images.unsplash.com/photo-1530878902700-5ad4f9e4c318?q=80&w=1934&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Switzerland" />
                    <div class="featured-image-block-content">
                        <p class="featured-image-block-title">Switzerland</p>
                        <p class="featured-image-block-description">Revel in the serene beauty of Switzerland's majestic Alps, pristine lakes, and charming villages.</p>
                    </div>
                </a>
            </div>
            <div class="featured-image-block column">
                <a href="#">
                    <img src="https://images.unsplash.com/photo-1529943247435-a5974e63d6e4?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Netherlands" />
                    <div class="featured-image-block-content">
                        <p class="featured-image-block-title">Netherlands</p>
                        <p class="featured-image-block-description"> Explore the picturesque canals, vibrant tulip fields, and innovative spirit of the Netherlands.</p>
                    </div>
                </a>
            </div>
            <div class="featured-image-block column">
                <a href="#">
                    <img src="https://images.unsplash.com/photo-1486299267070-83823f5448dd?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="United Kingdom" />
                    <div class="featured-image-block-content">
                        <p class="featured-image-block-title">United Kingdom</p>
                        <p class="featured-image-block-description"> Immerse yourself in the rich history, bustling cities, and scenic countryside of the United Kingdom, where tradition meets contemporary flair.</p>
                    </div>
                </a>
            </div>
            <div class="featured-image-block column">
                <a href="#">
                    <img src="https://images.unsplash.com/photo-1491557345352-5929e343eb89?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Belgium" />
                    <div class="featured-image-block-content">
                        <p class="featured-image-block-title">Belgium</p>
                        <p class="featured-image-block-description">Savor Belgium's world-famous chocolates, stunning medieval architecture, and vibrant cultural scene.</p>
                    </div>
                </a>
            </div>
        </div>
    </div>

    <div class="customer-reviews">
        <h2>Customer Reviews</h2>
        <div class="review">
            <p> "Our trip to Greece was unforgettable, with its mesmerizing sunsets in Santorini and the rich history of Athens leaving us in awe."</p>
            <p class="review-author">- Sarah L.</p>
        </div>
        <div class="review">
            <p>"Italy's incredible food, stunning art, and charming streets made every day of our vacation feel like a dream come true."</p>
            <p class="review-author">- John D.</p>
        </div>
        <div class="review">
            <p> "The breathtaking alpine scenery and impeccable hospitality in Switzerland made it the perfect destination for our family holiday."</p>
            <p class="review-author">- Emily R.</p>
        </div>
        <div class="review">
            <p>"Exploring the UK's historic landmarks and vibrant cities was a fantastic experience, combining the best of both worlds."</p>
            <p class="review-author">- Michael B.</p>
        </div>
    
    </div>
        
    
    <footer>
        <p>&copy; 2024 Ambani Travels&Tours. All rights reserved.</p>
    </footer>
</body>
</html>
