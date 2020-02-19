<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Medicine Details</title>
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
</head>
<body>
	<center>
		<h1>Add Medicine</h1>
	</center>
	<c:url var="addAction" value="/saveMedicine"></c:url>

	<form:form action="${addAction}" commandName="medicine">
		<table>
			<c:if test="${medicine.medicineID != 0 }">
				<tr>
					<td><form:label path="medicineID" cssClass="label">
							<spring:message code="label.medicineID" />
						</form:label></td>
					<td><form:input path="medicineID" readonly="true" 
							disabled="true" /> <form:hidden path="medicineID" /></td>
				</tr>
			</c:if>
			<tr>
				<td><form:label path="medicineDescription" cssClass="label">
						<spring:message code="label.medicineDescription" />
					</form:label></td>
				<td><form:input path="medicineDescription" /><form:errors path="medicineDescription"
						cssClass="error"></form:errors></td>
			</tr>
			<tr>
				<td><form:label path="cureFor" cssClass="label">
						<spring:message code="label.cureFor" />
					</form:label></td>
				<td><form:input path="cureFor" /><form:errors path="cureFor"
						cssClass="error"></form:errors></td>
			</tr>
			<tr>
				<td><form:label path="manufacturingCompany" cssClass="label">
						<spring:message code="label.manufacturingCompany" />
					</form:label></td>
				<td><form:input path="manufacturingCompany" /><form:errors path="manufacturingCompany"
						cssClass="error"></form:errors></td>
			</tr>
			<tr>
				<td><form:label path="dosage" cssClass="label">
						<spring:message code="label.dosage" />
					</form:label></td>
				<td><form:input path="dosage" />mg<form:errors path="dosage"
						cssClass="error"></form:errors></td>
			</tr>
				<tr>
					<td><form:label path="prescribedFor" cssClass="label">
							<spring:message code="label.prescribedFor" />
						</form:label></td>
					<td><form:select path="prescribedFor">
							<form:option value="A">Adult</form:option>
							<form:option value="C">Children</form:option>
						</form:select><form:errors path="prescribedFor"
						cssClass="error"></form:errors></td>
				</tr>
			<tr>
				<td><form:label path="amount" cssClass="label">
						<spring:message code="label.amount" />
					</form:label></td>
				<td><form:input path="amount" /><form:errors path="amount"
						cssClass="error"></form:errors></td>
			</tr>
			<tr>
				<td colspan="2"><c:if test="${medicine.medicineID != 0}">
						<input type="submit"
							value="<spring:message code="label.updateMedicine"/>" />
					</c:if> <c:if test="${medicine.medicineID == 0}">
						<input type="submit"
							value="<spring:message code="label.addmedicine"/>" />
					</c:if></td>
			</tr>
		</table>
	</form:form>
</body>
</html>