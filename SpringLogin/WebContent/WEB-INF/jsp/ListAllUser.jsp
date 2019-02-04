<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Details</title>
</head>
<body>
    <h2>Data Inserted Successfully !!!</h2>
    <br>
    <c:set var="regobj" value="${RegObj}" />
    User Name :
    <b>${regobj.uname}</b>
    <br> First Name :
    <b>${regobj.fname}</b>
    <br> Last Name :
    <b>${regobj.lname}</b>
    <br> Password :
    <b>${regobj.password}</b>
    <br> Confirm Password :
    <b>${regobj.confPass}</b>
    <br> Email ID :
    <b>${regobj.emailId}</b>
    <br> Gender :
    <b>${regobj.gender}</b>
    <br> City :
    <b>${regobj.city}</b>
    <br> Skills :
    <c:forEach var="skillSet" items="${regobj.skillSet}">
    ${ skillSet}
    </c:forEach>
</body>
</html>