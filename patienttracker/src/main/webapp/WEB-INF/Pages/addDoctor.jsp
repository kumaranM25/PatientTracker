<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Clerk Details</title>
</head>
<body>
	<center>
		<h1>Add Doctor</h1>
	</center>
	<c:url var="addAction" value="/saveDoctor"></c:url>

	<form:form action="${addAction}" commandName="doctor">
		<table>
			<c:if test="${!empty doctor.firstName }">
				<tr>
					<td><form:label path="doctorId">
							<spring:message code="label.doctorID" />
						</form:label></td>
					<td><form:input path="doctorId" readonly="true" size="8"
							disabled="true" /> <form:hidden path="doctorId" /></td>
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
				<td><form:label path="degree">
						<spring:message code="label.degree" />
					</form:label></td>
				<td><form:input path="degree" /></td>
			</tr>

			<tr>
				<td><form:label path="speciality">
						<spring:message code="label.speciality" />
					</form:label></td>
				<td><form:input path="speciality" /></td>
			</tr>

			<tr>
				<td><form:label path="workHours">
						<spring:message code="label.workhours" />
					</form:label></td>
				<td><form:select path="workHours">
						<form:option value="1">1</form:option>
						<form:option value="2">2</form:option>
						<form:option value="3">3</form:option>
						<form:option value="4">4</form:option>
						<form:option value="5">5</form:option>
						<form:option value="6">6</form:option>
						<form:option value="7">7</form:option>
						<form:option value="8">8</form:option>
						<form:option value="9">9</form:option>
						<form:option value="10">10</form:option>
					</form:select></td>
			</tr>

			<tr>
				<td><form:label path="hospitalName">
						<spring:message code="label.hospitalName" />
					</form:label></td>
				<td><form:input path="hospitalName" /></td>
			</tr>
			<tr>
				<td colspan="2"><c:if test="${!empty doctor.firstName}">
						<input type="submit"
							value="<spring:message code="label.editDoctor"/>" />
					</c:if> <c:if test="${empty doctor.firstName}">
						<input type="submit"
							value="<spring:message code="label.addDoctor"/>" />
					</c:if></td>
			</tr>
		</table>
	</form:form>
</body>
</html>