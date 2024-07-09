<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Table View Page</title>
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
        background-color: #444; /* Light Blue */
        color: white;
    }

    th, td {
        padding: 12px 15px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    tr:hover {
        background-color: #f1f1f1;
    }

    th {
        background-color: #444; 
        color: white;
        text-transform: uppercase;
    }

    td a {
        text-decoration: none;
    }

    input[type="button"] {
        padding: 8px 12px;
        margin: 5px 0;
        border: none;
        border-radius: 4px;
        background-color: #808080;
        color: white;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    input[type="button"]:hover {
        background-color: #808090; 
    }
</style>
</head>
<body>
<table border ="1">
	<thead>
			<tr>
				<th>Tour Guide ID</th>
				<th>Full Name</th>
				<th>NIC Number</th>
				<th>Age</th>
				<th>Email Address</th>
				<th>Country</th>
				<th>Phone Number</th>
				<th>Actions</th>
				
			</tr>
	</thead>
	<tbody>
	<c:forEach var="tourguide" items="${tourguideDetails}">
	
     <c:set var="tid" value="${tourguide.tid}"/>
	 <c:set var="tname" value="${tourguide.tname}"/>
	 <c:set var="tnic" value="${tourguide.tnic}"/>
	 <c:set var="tage" value="${tourguide.tage}"/>
	 <c:set var="taddress" value="${tourguide.taddress}"/>
	 <c:set var="tcountry" value="${tourguide.tcountry}"/>
	 <c:set var="tphnum" value="${tourguide.tphnum}"/>
	 
		<tr>
				<td>${tourguide.tid}</td>
				<td>${tourguide.tname}</td>
				<td>${tourguide.tnic}</td>
				<td>${tourguide.tage}</td>
				<td>${tourguide.taddress}</td>
				<td>${tourguide.tcountry}</td>
				<td>${tourguide.tphnum}</td>
				<td>
					<c:url value= "TourGuideUpdate.jsp" var="updateT">
						<c:param name = "tid" value="${tid}"/>
						<c:param name="tname" value="${tname}"/>
						<c:param name="tnic" value="${tnic}"/>
						<c:param name="tage" value="${tage}"/>
						<c:param name="taddress" value="${taddress}"/>
						<c:param name="tcountry" value="${tcountry}"/>
						<c:param name="tphnum" value="${tphnum}"/>
					</c:url>
					<a href ="${updateT}">
						<input type = "button" name ="update" value="Update">
					</a>
					<br>
					<c:url value= "TourGuideDelete.jsp" var="deletetT">
						<c:param name = "tid" value="${tid}"/>
						<c:param name="tname" value="${tname}"/>
						<c:param name="tnic" value="${tnic}"/>
						<c:param name="tage" value="${tage}"/>
						<c:param name="taddress" value="${taddress}"/>
						<c:param name="tcountry" value="${tcountry}"/>
						<c:param name="tphnum" value="${tphnum}"/>
					</c:url>
					<a href ="${deletetT}">
						<input type = "button" name ="delete" value="Delete">
					</a>
				</td>
		</tr>
	</c:forEach>
	</tbody>
</table>
</body>
</html>