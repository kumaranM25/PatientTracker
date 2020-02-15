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
</head>
<body>
	<center>
		<h1>Add Patient</h1>
	</center>
	<c:url var="addAction" value="/savePatient"></c:url>

	<form:form action="${addAction}" commandName="patient">
		<table>
			<c:if test="${!empty patient.firstName }">
				<tr>
					<td><form:label path="patientId">
							<spring:message code="label.patientID" />
						</form:label></td>
					<td><form:input path="patientId" readonly="true" size="8"
							disabled="true" /> <form:hidden path="patientId" /></td>
				</tr>
			</c:if>
			<tr>
				<td><form:label path="firstName">
						<spring:message code="label.firstname" />
					</form:label></td>
				<td><form:input path="firstName" /></td>
			</tr>
			<tr>
				<td><form:label path="lastName">
						<spring:message code="label.lastname" />
					</form:label></td>
				<td><form:input path="lastName" /></td>
			</tr>
			<tr>
				<td><form:label path="age">
						<spring:message code="label.age" />
					</form:label></td>
				<td><form:input path="age" /></td>
			</tr>
			<tr>
				<td><form:label path="gender">
						<spring:message code="label.gender" />
					</form:label></td>
				<td><form:select path="gender">
						<form:option value="male">Male</form:option>
						<form:option value="female">Female</form:option>
					</form:select></td>
			</tr>
			<tr>
				<td><form:label path="dateOfBirth">
						<spring:message code="label.dateOfBirth" />
					</form:label></td>
				<td><form:input path="dateOfBirth" /></td>
			</tr>
			<tr>
				<td><form:label path="mobileNumber">
						<spring:message code="label.mobileNumber" />
					</form:label></td>
				<td><form:input path="mobileNumber" /></td>
			</tr>
			<tr>
				<td><form:label path="altMobileNumber">
						<spring:message code="label.altMobileNumber" />
					</form:label></td>
				<td><form:input path="altMobileNumber" /></td>
			</tr>
			<tr>
				<td><form:label path="emailId">
						<spring:message code="label.emailId" />
					</form:label></td>
				<td><form:input path="emailId" /></td>
			</tr>

			<tr>
				<td><form:label path="address">
						<spring:message code="label.address" />
					</form:label></td>
				<td><form:input path="address" /></td>
			</tr>

			<tr>
				<td><form:label path="city">
						<spring:message code="label.city" />
					</form:label></td>
				<td><form:input path="city" /></td>
			</tr>

			<tr>
				<td><form:label path="state">
						<spring:message code="label.state" />
					</form:label></td>
				<td><form:input path="state" /></td>
			</tr>

			<tr>
				<td><form:label path="zipCode">
						<spring:message code="label.zipCode" />
					</form:label></td>
				<td><form:input path="zipCode" /></td>
			</tr>
			<tr>
				<td colspan="2"><c:if test="${!empty patient.firstName}">
						<input type="submit"
							value="<spring:message code="label.editPatient"/>" />
					</c:if> <c:if test="${empty patient.firstName}">
						<input type="submit"
							value="<spring:message code="label.addPatient"/>" />
					</c:if></td>
			</tr>
		</table>
	</form:form>
</body>
</html>