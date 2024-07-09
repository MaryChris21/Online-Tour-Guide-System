<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Account</title>
<link rel="stylesheet" type="text/css" href="AccountStyles.css">

</head>
<body>

  <div class="container">
   <table>
   <c:forEach var="use" items="${userDetails}">
   <c:set var="id" value="${use.id}"/>
   <c:set var="fname" value="${use.firstname}"/>
   <c:set var="lname" value="${use.lastname}"/>
   <c:set var="email" value="${use.email}"/>
   <c:set var="phone" value="${use.phone}"/>
   <c:set var="username" value="${use.username}"/>
   <c:set var="password" value="${use.password}"/>

   
   <tr>
       <td>Customer ID</td>
       <td>${use.id}</td>
   </tr>
   
   <tr>
       <td>First Name</td>
       <td>${use.firstname}</td>
   </tr>
   
   <tr>
       <td>Last Name</td>
       <td>${use.lastname}</td>
   </tr>
   
   <tr>
       <td>Email</td>
       <td>${use.email}</td>
   </tr>
   
   <tr>
       <td>Phone</td>
       <td>${use.phone}</td>
   </tr>
   
   <tr>
       <td>User Name</td>
       <td>${use.username}</td>
   </tr>
   
   <tr>
       <td>Password</td>
       <td>${use.password}</td>
   </tr>
   
   
   </c:forEach>
   </table>
   
   <div class="btn-container">
   <c:url value = "UpdateUser.jsp" var="userupdate">
      <c:param name="id" value="${id}"/>
      <c:param name="firstname" value="${fname}"/>
      <c:param name="lastname" value="${lname}"/>
      <c:param name="email" value="${email}"/>
      <c:param name="phone" value="${phone}"/>
      <c:param name="uname" value="${username}"/>
      <c:param name="pass" value="${password}"/>
         
   </c:url>
   
   <a href="${userupdate}">Update data
   
   </a>
   
   <c:url value="deleteuser.jsp" var="userdelete">
   		<c:param name="id" value="${id}"/>
   		<c:param name="firstname" value="${fname}"/>
   		<c:param name="lastname" value="${lname}"/>
        <c:param name="email" value="${email}"/>
        <c:param name="phone" value="${phone}"/>
        <c:param name="uname" value="${username}"/>
        <c:param name="pass" value="${password}"/>

   </c:url>
   
   <a href="${userdelete}">Delete Account
   
   </a>
   
   </div>
   </div>
   
</body>
</html>