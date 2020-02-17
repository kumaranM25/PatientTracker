<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patient Details</title>
<style type="text/css">
body {
	font-family: verdana;
	font-size: 12px;
	margin: 40px;
}

.CustomerLabel {
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
</head>
<body>
	<center>
		<h1>Add Patient</h1>
	</center>
	<c:url var="addAction" value="/savePatient"></c:url>

	<form:form action="${addAction}" commandName="patient">
		<center>
			<table>
				<c:if test="${!empty patient.firstName }">
					<tr>
						<td><form:label path="patientId">
								<spring:message code="label.patientID" />
							</form:label></td>
						<td><form:input path="patientId" readonly="true"
								disabled="true" /> <form:hidden path="patientId" /></td>
					</tr>
				</c:if>
				<tr>
					<td><form:label path="firstName" cssClass="customerLabel">
							<spring:message code="label.firstname" />
						</form:label></td>
					<td><form:input path="firstName" /> <form:errors
							path="firstName" cssClass="error">
						</form:errors></td>
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
							cssClass="error">
						</form:errors></td>
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
					<td><form:input path="dateOfBirth" type="date" /> <form:errors
							path="dateOfBirth" cssClass="error">
						</form:errors></td>
				</tr>
				<tr>
					<td><form:label path="mobileNumber" cssClass="customerLabel">
							<spring:message code="label.mobileNumber" />
						</form:label></td>
					<td><form:input path="mobileNumber" /> <form:errors
							path="mobileNumber" cssClass="error">
						</form:errors></td>
				</tr>
				<tr>
					<td><form:label path="altMobileNumber"
							cssClass="customerLabel">
							<spring:message code="label.altMobileNumber" />
						</form:label></td>
					<td><form:input path="altMobileNumber" /></td>
				</tr>
				<tr>
					<td><form:label path="emailId" cssClass="customerLabel">
							<spring:message code="label.emailId" />
						</form:label></td>
					<td><form:input path="emailId" /> <form:errors path="emailId"
							cssClass="error">
						</form:errors></td>
				</tr>

				<tr>
					<td><form:label path="address" cssClass="customerLabel">
							<spring:message code="label.address" />
						</form:label></td>
					<td><form:input path="address" /> <form:errors path="address"
							cssClass="error">
						</form:errors></td>
				</tr>

				<tr>
					<td><form:label path="city" cssClass="customerLabel">
							<spring:message code="label.city" />
						</form:label></td>
					<td><form:input path="city" /> <form:errors path="city"
							cssClass="error">
						</form:errors></td>
				</tr>

				<tr>
					<td><form:label path="state" cssClass="customerLabel">
							<spring:message code="label.state" />
						</form:label></td>
					<td><form:input path="state" /> <form:errors path="state"
							cssClass="error">
						</form:errors></td>
				</tr>

				<tr>
					<td><form:label path="zipCode" cssClass="customerLabel">
							<spring:message code="label.zipCode" />
						</form:label></td>
					<td><form:input path="zipCode" /> <form:errors path="zipCode"
							cssClass="error">
						</form:errors></td>
				</tr>
				<tr>
					<td colspan="2"><c:if test="${!empty patient.firstName}">
							<input type="submit"
								value="<spring:message code="label.editPatient"/>" />
						</c:if> <c:if test="${empty patient.firstName}">
							<input type="submit"
								value="<spring:message code="label.addPatient"/>" />
						</c:if></td>
					<td><input type=button value="Back" onCLick="history.back()">
					</td>
				</tr>
			</table>
		</center>
	</form:form>
</body>
</html>