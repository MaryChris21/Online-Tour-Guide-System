<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Table view page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f4f9;
        color: #333;
    }

    table {
        width: 80%;
        margin: 20px auto;
        border-collapse: collapse;
        background-color: #fff;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    thead {
        background-color: #444; 
        color: white;
    }

    th, td {
        padding: 12px 15px;
        text-align: center;
        border-bottom: 1px solid #ddd;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    tr:hover {
        background-color: #f1f1f1;
    }

    th {
        background-color: #444; /* Light Blue */
        color: white;
        text-transform: uppercase;
    }

    td a {
        text-decoration: none;
    }

    input[type="button"] {
        padding: 8px 12px; /* Adjust button size */
        margin: 5px 0;
        border: none;
        border-radius: 4px;
        background-color: #808080; /* Ash color */
        color: white;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    input[type="button"]:hover {
        background-color: #808090; /* Darker Ash color on hover */
    }
</style>

</head>
<body>
<table border ="1">
	<thead>
			<tr>
				<th>Package ID</th>
				<th>Package Type</th>
				<th>Country</th>
				<th>Price</th>
				<th>Description</th>
				<th>Action</th>
			</tr> 
	</thead>
	<tbody>
	<c:forEach var="tourpackage" items="${tourpackageDetails}">
	
	 <c:set var="pid" value="${tourpackage.pid}"/>
	 <c:set var="ptype" value="${tourpackage.ptype}"/>
	 <c:set var="country" value="${tourpackage.country}"/>
	 <c:set var="price" value="${tourpackage.price}"/>
	 <c:set var="description" value="${tourpackage.description}"/>
	 
		<tr>
				<td>${tourpackage.pid}</td>
				<td>${tourpackage.ptype}</td>
				<td>${tourpackage.country}</td>
				<td>${tourpackage.price}</td>
				<td>${tourpackage.description}</td>
				<td>
				
					<c:url value= "UpdatePackage.jsp" var="updatetp">
						<c:param name = "pid" value="${pid}"/>
						<c:param name="ptype" value="${ptype}"/>
						<c:param name="country" value="${country}"/>
						<c:param name="price" value="${price}"/>
						<c:param name="description" value="${description}"/>
					</c:url>
					<a href ="${updatetp}">
						<input type = "button" name ="update" value="Update">
					</a>
					<br>
					<c:url value= "deletepackage.jsp" var="deletetp">
						<c:param name = "pid" value="${pid}"/>
						<c:param name="ptype" value="${ptype}"/>
						<c:param name="country" value="${country}"/>
						<c:param name="price" value="${price}"/>
						<c:param name="description" value="${description}"/>
					</c:url>
					<a href ="${deletetp}">
						<input type = "button" name ="delete" value="Delete">
					</a>
				</td>
		</tr>
	</c:forEach>
	</tbody>
</table>
</body>
</html>