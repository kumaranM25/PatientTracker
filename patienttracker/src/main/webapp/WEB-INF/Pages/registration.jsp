<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Create an account</title>
<style type="text/css">
body {
	font-family: verdana;
	font-size: 12px;
	margin: 40px;
}

.customerTable, .customerTable td {
	border-collapse: collapse;
	border: 1px solid #aaa;
	margin: 2px;
	padding: 2px 2px 2px 10px;
	font-size: 12px;
}

.CustomerTable th {
	font-weight: bold;
	font-size: 12px;
	background-color: #5C82FF;
	color: white;
}

.label {
	font-family: verdana;
	font-size: 12px;
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
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script>
	$(function() {
		$("#datepicker").datepicker();
	});
</script>
<script type="text/javascript" lnaguage="javascript">
	$(function() {
		$("#datepicker").datepicker({
			showOn : "both",
			buttonImage : "image.jpg",
			dateFormat : "yy-mm-dd",
			buttonImageOnly : false,
			minDate : +0, //you do not want to show previous date.
			maxDate : +0
		// you do not want to show next day.
		});
	});
</script>
</head>

<body>
	<h2>Create your account</h2>
	<form:form method="POST" modelAttribute="admin" class="customerForm"
		action="saveRegistration">

		<table>
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
				<td><form:input path="lastName" /> <form:errors
						path="lastName" cssClass="error"></form:errors></td>
			</tr>
			<tr>
				<td><form:label path="dob" cssClass="customerLabel">
						<spring:message code="label.dob" />
					</form:label></td>
				<td><form:input path="dob" /> <form:errors path="dob"
						cssClass="error"></form:errors></td>
			</tr>
			<tr>
				<td><form:label path="gender" cssClass="customerLabel">
						<spring:message code="label.gender" />
					</form:label></td>
				<td><form:select path="gender" placeholder="Gender">
						<form:option value="Gender" label="Gender" />
						<form:option value="Male" label="Male" />
						<form:option value="Female" label="Female" />
					</form:select> <form:errors path="gender"></form:errors></td>
			</tr>

			<tr>
				<td><form:label path="contactNumber" cssClass="customerLabel">
						<spring:message code="label.contactnumber" />
					</form:label></td>
				<td><form:input path="contactNumber" /> <form:errors
						path="contactNumber" cssClass="error"></form:errors></td>
			</tr>
			<tr>
				<td><form:label path="emailId" cssClass="customerLabel">
						<spring:message code="label.emailid" />
					</form:label></td>
				<td><form:input path="emailId" /> <form:errors path="emailId"
						cssClass="error"></form:errors></td>
			</tr>
			<tr>
				<td><form:label path="password" cssClass="customerLabel">
						<spring:message code="label.password" />
					</form:label></td>
				<td><form:input type="password" path="password" /> <form:errors
						path="password" cssClass="error"></form:errors></td>
			</tr>
			<tr><td></td><td><button type="submit">Submit</button></td></tr>
		</table>
		

	</form:form>



	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

</body>
</html>
