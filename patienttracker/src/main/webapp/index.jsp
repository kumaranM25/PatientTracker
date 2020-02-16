<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%-- <% response.sendRedirect("login"); %> --%>
	<a href="${contextPath}/home">Click here for Home</a>
	<br/>
	<a href="${contextPath}/login">Click here for Login & Registration</a>
	<br />


	<a href="${contextPath}/clerk"> Click here to Create/Maintain Clerk
		details</a>
	<br />
	<a href="${contextPath}/doctor"> Click here to Create/Maintain
		Doctor details</a>
	<br />
	<a href="${contextPath}/patient"> Click here to Create/Maintain
		Patient details</a>
	<br />
</body>
</html>