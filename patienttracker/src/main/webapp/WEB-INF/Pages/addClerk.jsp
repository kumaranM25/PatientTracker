<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Clerk Details</title>
<script src="${contextPath}/resources/js/jquery-3.4.1.min.js"></script>
<link href="${contextPath}/resources/css/datepicker.min.css"
	rel="stylesheet">
<script src="${contextPath}/resources/js/datepicker.min.js"></script>
<style type="text/css">
body {
	font-family: verdana;
	font-size: 14px;
	margin: 40px;
	color: #d9364e;
	backgroud-color: #b3cde0;
}

.form {
	max-width: 1350px;
	font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;
	backgroud-color: #b3cde0;
}

.form label {
	display: block;
	margin-bottom: 10px;
}

.form label>span {
	float: left;
	width: 100px;
	color: #F072A9;
	font-weight: bold;
	font-size: 13px;
	text-shadow: 1px 1px 1px #fff;
}

.table {
	font-family: verdana, arial, sans-serif;
	font-size: 13px;
	color: #333333;
	border-width: 1px;
	border-color: #999999;
	border-collapse: collapse;
}

.table.table tr {
	background-color: #d4e3e5;
}

.CustomerLabel {
	font-family: verdana;
	font-size: 14px;
	font-weight: bold;
}

a, a:AFTER {
	color: blue;
}

.error {
	color: red;
	font-style: italic;
}
</style>

<script>
	$(function() {
		$("#datepicker").datepicker({
			format : 'dd-mm-yyyy',
			autoHide : true,
			endDate : '31-12-2000'
		});
	});
</script>

</head>
<body bgcolor="#b3cde0">
	<center>
		<h1>Add Clerk</h1>
	</center>
	<c:url var="addAction" value="/saveClerk"></c:url>
	<div class="form">
		<form:form action="${addAction}" commandName="clerk">


			<center>
				<table class="table">
					<c:if test="${!empty clerk.clerkId }">
						<tr>

							<td><form:label path="clerkId">
									<spring:message code="label.clerkID" />
								</form:label></td>
							<td><form:input path="clerkId" readonly="true"
									disabled="true" /> <form:hidden path="clerkId" /></td>
						</tr>
					</c:if>
					<tr>
						<td><form:label path="firstName" cssClass="customerLabel">
								<spring:message code="label.firstname" />
							</form:label></td>
						<td><form:input path="firstName" /> <form:errors
								path="firstName" cssClass="error"></form:errors></td>
					</tr>
					<tr>
						<td><form:label path="lastName" cssClass="customerLabel">
								<spring:message code="label.lastname" />
							</form:label></td>
						<td><form:input path="lastName" /></td>
					</tr>
					<tr>
						<td><form:label path="age" cssClass="customerLabel">
								<spring:message code="label.age" />
							</form:label></td>
						<td><form:input path="age" /> <form:errors path="age"
								cssClass="error"></form:errors></td>
					</tr>
					<tr>
						<td><form:label path="gender" cssClass="customerLabel">
								<spring:message code="label.gender" />
							</form:label></td>
						<td><form:select path="gender">
								<form:option value="Gender" label="Gender" />
								<form:option value="male">Male</form:option>
								<form:option value="female">Female</form:option>
							</form:select></td>
					</tr>
					<tr>
						<td><form:label path="dateOfBirth" cssClass="customerLabel">
								<spring:message code="label.dateOfBirth" />
							</form:label></td>
						<td><form:input path="dateOfBirth" id="datepicker" /> <form:errors
								path="dateOfBirth" cssClass="error"></form:errors></td>
					</tr>
					<tr>
						<td><form:label path="mobileNumber" cssClass="customerLabel">
								<spring:message code="label.mobileNumber" />
							</form:label></td>
						<td><form:input path="mobileNumber" /> <form:errors
								path="mobileNumber" cssClass="error"></form:errors></td>
					</tr>
					<tr>
						<td><form:label path="altMobileNumber"
								cssClass="customerLabel">
								<spring:message code="label.altMobileNumber" />
							</form:label></td>
						<td><form:input path="altMobileNumber" /> <form:errors
								path="altMobileNumber" cssClass="error"></form:errors></td>
					</tr>
					<tr>
						<td><form:label path="emailId" cssClass="customerLabel">
								<spring:message code="label.emailId" />
							</form:label></td>
						<td><form:input path="emailId" /> <form:errors
								path="emailId" cssClass="error"></form:errors> <c:if
								test="${error != null}">
								<span class="error">${error}</span>
							</c:if></td>
					</tr>



					<tr>

						<td><form:label path="address" cssClass="customerLabel">
								<spring:message code="label.address" />
							</form:label></td>
						<td><form:input path="address" /> <form:errors
								path="address" cssClass="error"></form:errors></td>
					</tr>

					<tr>
						<td><form:label path="city" cssClass="customerLabel">
								<spring:message code="label.city" />
							</form:label></td>
						<td><form:input path="city" /> <form:errors path="city"
								cssClass="error"></form:errors></td>
					</tr>

					<tr>
						<td><form:label path="state" cssClass="customerLabel">
								<spring:message code="label.state" />
							</form:label></td>
						<td><form:input path="state" /> <form:errors path="state"
								cssClass="error"></form:errors></td>
					</tr>

					<tr>
						<td><form:label path="zipCode" cssClass="customerLabel">
								<spring:message code="label.zipCode" />
							</form:label></td>
						<td><form:input path="zipCode" /> <form:errors
								path="zipCode" cssClass="error"></form:errors></td>
					</tr>

					<tr>
						<td colspan="2"><c:if test="${!empty clerk.firstName}">
								<input type="submit"
									value="<spring:message code="label.editClerk"/>" />
							</c:if> <c:if test="${empty clerk.firstName}">
								<input type="submit"
									value="<spring:message code="label.addClerk"/>" />
							</c:if></td>
						<td><input type=button value="Back" onCLick="history.back()">
						</td>
					</tr>
				</table>
			</center>
		</form:form>
	</div>
</body>
</html>