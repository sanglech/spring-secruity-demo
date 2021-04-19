<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri ="http://www.springframework.org/tags/form" %>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Company Home Page</title>
</head>
<body>
	<h1> Welcome to the Company Home Page</h1>
	<p>
		Welcome to da homepage
	</p>
	
	<hr>
	<!-- display user name and role -->
	
	User: <security:authentication property="principal.username"/>
	<br><br>
	Role(s): <security:authentication property="principal.authorities"/>
	
	<hr>
	
	<!-- Add a logout button -->
	<form:form action= "${pageContext.request.contextPath}/logout" 
	method="POST">
		<input type ="submit" value="Logout"/>
	
	</form:form>
	
	
</body>
</html>