<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page session="true"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Log in with your account</title>

<link href="${contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${contextPath}/resources/css/common.css" rel="stylesheet">
</head>

<body>

	<%-- <form method="POST" action="login"  >
        <h2>Log in</h2>

        <div>
            <span>${message}</span> 
            <input  type="text" name="username" placeholder="Username"/>
            <input  type="password"  name="password" placeholder="Password"/>
           <span>${error}</span>
            <button  type="submit">Log In</button>
            <h4 class="text-center"><a href="${contextPath}/registration">Create an account</a></h4>
        </div>
      </form> --%>
	<form method="POST" action="login" class="form-signin">
		<h2 class="form-heading">Log in</h2>

		<div class="form-group ${error != null ? 'has-error' : ''}">
			<c:if test="${not empty message}">
				
					<div class="alert alert-success">
						<strong>${message}</strong>
					</div>
			</c:if>
			<c:if test="${not empty error}">
					<div class="alert alert-danger">
						<strong>${error}</strong>
					</div>
			</c:if>

			<input type="text" name="username" class="form-control"
				placeholder="Username" /> <input type="password" name="password"
				class="form-control" placeholder="Password" /> <input type="hidden"
				name="${_csrf.parameterName}" value="${_csrf.token}" />
			
			<button class="btn btn-lg btn-primary btn-block" type="submit">Log
				In</button>
			<h4 class="text-center">
				<a href="${contextPath}/registration">Create an account</a>
			</h4>
		</div>
	</form>

	<%-- <div class="container">
      <form:form method="POST" action="loginCheck" modelAttribute="user" class="form-signin">
        <h2 class="form-heading">Log in</h2>

        <div class="form-group ${error != null ? 'has-error' : ''}">
            <span>${message}</span> 
            <form:input  type="text" path="emailId" class="form-control" placeholder="Username"/>
            <form:input  type="password"  path="password"  class="form-control" placeholder="Password"/>
           <span>${error}</span>

            <button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>
            <h4 class="text-center"><a href="${contextPath}/registration">Create an account</a></h4>
        </div>
      </form:form>
    </div> --%>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
