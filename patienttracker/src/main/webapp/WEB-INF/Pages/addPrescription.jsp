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
<title>Prescription Details</title>
<script src="${contextPath}/resources/js/jquery-3.4.1.min.js"></script>
<link  href="${contextPath}/resources/css/datepicker.min.css" rel="stylesheet">
<script src="${contextPath}/resources/js/datepicker.min.js"></script>
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
<script>
	$(function() {
		$("#reqDate").datepicker({format: 'dd-mm-yyyy',
			autoHide:true
});
	});
</script>
</head>
<body>
	<center>
		<h1>Add Prescription</h1>
	</center>
	<c:url var="addAction" value="/savePrescription"></c:url>

	<form:form action="${addAction}" modelAttribute="prescription" autocomplete="off">
		<table>
			<c:if test="${ prescription.requestID != 0 }">
				<tr>
					<td><form:label path="requestID" cssClass="label">
							<spring:message code="label.requestID" />
						</form:label></td>
					<td><form:input path="requestID" readonly="true"
							disabled="true" /> <form:hidden path="requestID" /></td>
				</tr>
			</c:if>
			<tr>
				<td><form:label path="patientID" cssClass="label">
						<spring:message code="label.patientID" />
					</form:label></td>
				<td><form:input path="patientID" /><form:errors path="patientID"
						cssClass="error"></form:errors></td>
			</tr>
			<tr>
				<td><form:label path="doctorID" cssClass="label">
						<spring:message code="label.doctorID" />
					</form:label></td>
				<td><form:input path="doctorID" /><form:errors path="doctorID"
						cssClass="error"></form:errors></td>
			</tr>
			<tr>
				<td><form:label path="requestDate" cssClass="label">
						<spring:message code="label.requestDate" />
					</form:label></td>
				<td><form:input path="requestDate" id="reqDate" /><form:errors path="requestDate"
						cssClass="error"></form:errors></td>
			</tr>
			<tr>
				<td><form:label path="medicineID1" cssClass="label">
						<spring:message code="label.medicineID1" />
					</form:label></td>
				<td><form:input path="medicineID1" /><form:errors path="medicineID1"
						cssClass="error"></form:errors></td>
			</tr>
			<tr>
				<td><form:label path="quantity1" cssClass="label">
						<spring:message code="label.quantity1" />
					</form:label></td>
				<td><form:input path="quantity1" /><form:errors path="quantity1"
						cssClass="error"></form:errors></td>
			</tr>
			<tr>
				<td><form:label path="medicineID2" cssClass="label">
						<spring:message code="label.medicineID2" />
					</form:label></td>
				<td><form:input path="medicineID2" /><form:errors path="medicineID2"
						cssClass="error"></form:errors></td>
			</tr>
			<tr>
				<td><form:label path="quantity2" cssClass="label">
						<spring:message code="label.quantity2" />
					</form:label></td>
				<td><form:input path="quantity2" /><form:errors path="quantity2"
						cssClass="error"></form:errors></td>
			</tr>

			<tr>
				<td><form:label path="medicineID3" cssClass="label">
						<spring:message code="label.medicineID3" />
					</form:label></td>
				<td><form:input path="medicineID3" /><form:errors path="medicineID3"
						cssClass="error"></form:errors></td>
			</tr>

			<tr>
				<td><form:label path="quantity3" cssClass="label">
						<spring:message code="label.quantity3" />
					</form:label></td>
				<td><form:input path="quantity3" /><form:errors path="quantity3"
						cssClass="error"></form:errors></td>
			</tr>

			<tr>
				<td><form:label path="medicineID4" cssClass="label">
						<spring:message code="label.medicineID4" />
					</form:label></td>
				<td><form:input path="medicineID4" /><form:errors path="medicineID4"
						cssClass="error"></form:errors></td>
			</tr>

			<tr>
				<td><form:label path="quantity4" cssClass="label">
						<spring:message code="label.quantity4" />
					</form:label></td>
				<td><form:input path="quantity4" /><form:errors path="quantity4"
						cssClass="error"></form:errors></td>
			</tr>
			<tr>
				<td><form:label path="medicineID5" cssClass="label">
						<spring:message code="label.medicineID5" />
					</form:label></td>
				<td><form:input path="medicineID5" /><form:errors path="medicineID5"
						cssClass="error"></form:errors></td>
			</tr>
			<tr>
				<td><form:label path="quantity5" cssClass="label">
						<spring:message code="label.quantity5" />
					</form:label></td>
				<td><form:input path="quantity5" /><form:errors path="quantity5"
						cssClass="error"></form:errors></td>
			</tr>
			<tr>
				<td><form:label path="otherInfo" cssClass="label">
						<spring:message code="label.otherInfo" />
					</form:label></td>
				<td><form:input path="otherInfo" /><form:errors path="otherInfo"
						cssClass="error"></form:errors></td>
			</tr>
			<%-- <tr>
				<td><form:label path="status" cssClass="label">
						<spring:message code="label.status" />
					</form:label></td>
				<td><form:input path="status" /><form:errors path="status"
						cssClass="error"></form:errors></td>
			</tr> --%>
			<tr>
					<td><form:label path="status" cssClass="label">
							<spring:message code="label.status" />
						</form:label></td>
					<td><form:select path="status" readonly="true">
							
							<form:option value="P">Pending Bill</form:option>
							
						</form:select><form:errors path="status"
						cssClass="error"></form:errors></td>
				</tr>
			<tr>
				<td colspan="2">
				<c:if test="${prescription.requestID == 0}">
						<input type="submit"
							value="<spring:message code="label.addPrescription"/>" />
					</c:if><c:if test="${prescription.requestID != 0}">
						<input type="submit"
							value="<spring:message code="label.editPrescription"/>" />
					</c:if> </td>
			</tr>
		</table>
	</form:form>
</body>
</html>