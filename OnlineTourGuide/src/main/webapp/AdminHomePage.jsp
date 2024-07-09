<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Profile Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: url('images/bgimage.jpg') no-repeat center center fixed;
            background-size: cover;
        }
        .header {
            background-color: #000000; /* Light blue */
            color: white;
            padding: 10px 20px;
            text-align: center;
        }
        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.3);
            backdrop-filter: blur(10px);
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center; 
        }
        .btn-container {
            text-align: center;
            margin-bottom: 20px;
        }
        .btn {
            display: inline-block;
            margin: 10px;
            padding: 10px 20px;
            color: white;
            background-color: #007BFF; /* Light blue */
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            font-size: 16px;
        }
        .btn:hover {
            background-color: #0056b3; /* Darker shade of light blue */
        }
        
        .profile-details {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            background-color: white; /* White background for the table */
        }
        .profile-details th {
            text-align: center;
            padding: 12px;
            border: 1px solid #ddd;
            background-color: #444; /* Color for column headers */
            color: white;
        }
        .profile-details td {
            text-align: center;
            padding: 12px;
            border: 1px solid #ddd;
            background-color: white; /* Color for other columns */
        }
        .profile-details tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        .profile-details tr:hover {
            background-color: #f1f1f4;
        }
        .profile-picture {
            text-align: center;
            margin-bottom: 20px;
        }
        .profile-picture img {
            border-radius: 50%;
            width: 150px;
            height: 150px;
            object-fit: cover;
        }
    </style>
</head>
<body>

    <div class="header">
        <h1>Admin Profile</h1>
    </div>

    <div class="container">
        <div class="btn-container">
            <a href="TourGuideInsert.jsp" class="btn">Add Tour Guide</a>
            <a href="TourPackagesInsert.jsp" class="btn">Add Tour Packages</a>
        </div>

        <div class="profile-info">
            <h1>Welcome, Catherine</h1>
            <h2>Let's manage our tours and guides efficiently</h2>
        </div>

        <div class="profile-picture">
            <img src="images/dp.jpg" alt="Admin Picture">
        </div>

        <table class="profile-details">
            <tr>
                <th>Name</th>
                <td>Catherine Fox</td>
            </tr>
            <tr>
                <th>Email</th>
                <td>Catherine@gmail.com</td>
            </tr>
            <tr>
                <th>Phone</th>
                <td>+1-555-123-4567</td>
            </tr>
            <tr>
                <th>Role</th>
                <td> System Administrator</td>
            </tr>
            <tr>
                <th>Address</th>
                <td>123 Main Street, Cityville, England</td>
            </tr>
            <tr>
                <th>Joined Date</th>
                <td>January 1, 2020</td>
            </tr>
        </table>
    </div>

</body>
</html>