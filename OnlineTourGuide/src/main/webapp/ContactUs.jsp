<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Contact Us - Ambani Travels&Tours</title>
    <link rel="stylesheet" type="text/css" href="ContactUsStyles.css">
    
    

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
    
    <div class="contact-container">
        <div class="contact-header">
            <h2>Contact Us</h2>
            <p>If you have any questions, feel free to contact us by filling out the form below.</p>
        </div>
        <div class="contact-form">
            <form action="sendContact.jsp" method="post">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>
                
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
                
                <label for="subject">Subject:</label>
                <input type="text" id="subject" name="subject" required>
                
                <label for="message">Message:</label>
                <textarea id="message" name="message" rows="5" required></textarea>
                
                <button type="submit">Send Message</button>
            </form>
        </div>
        <div class="contact-info">
            <h3>Our Address</h3>
            <p>123 Travel Road, Adventure City, Country</p>
            <h3>Phone</h3>
            <p>(123) 456-7890</p>
            <h3>Email</h3>
            <p>info@ambanitravels.com</p>
        </div>
        <div class="map">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3162.838576748785!2d-122.08424968468247!3d37.42206597982542!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x808fbba2f51c9b99%3A0x7df1c4db393dd48b!2sGoogleplex!5e0!3m2!1sen!2sus!4v1577885141166!5m2!1sen!2sus" width="100%" height="100%" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
        </div>
    </div>

    <footer>
        <p>&copy; 2024 Ambani Travels&Tours. All rights reserved.</p>
    </footer>
</body>
</html>
