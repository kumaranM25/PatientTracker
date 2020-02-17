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
<title>Patient Maintaining Page</title>

<link href="${contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${contextPath}/resources/css/common.css" rel="stylesheet">

<style type="text/css">
body {
	font-family: verdana;
	font-size: 14px;
	margin: 40px;
}

.table {
	border-collapse: collapse;
	border-spacing: 0;
	border-color: #ccc;
}

.table td {
	font-family: Arial, sans-serif;
	font-size: 14px;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #fff;
}

.table th {
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: pink;
}

.table .table-4eph {
	background-color: #f9f9f9
}
</style>

</head>
<body>
	<form:form commandName="listPatients">
		<center>
			<h1>Patient Maintaining Page</h1>
			<br /> <br />
			<center>
				<h1>Patients List</h1>
			</center>

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

			<c:if test="${!empty listPatients}">
				<table class="table">
					<tr>
						<th width="80">Patient ID</th>
						<th width="120">First Name</th>
						<th width="120">Last Name</th>
						<th width="80">Age</th>
						<th width="80">Gender</th>
						<th width="120">Date Of Birth</th>
						<th width="120">Contact Number</th>
						<th width="120">Alt Contact Number</th>
						<th width="120">Email ID</th>
						<th width="120">Address</th>
						<th width="120">City</th>
						<th width="120">State</th>
						<th width="120">Zip Code</th>
						<th width="60">Edit</th>
						<th width="60">Delete</th>
					</tr>
					<c:forEach items="${listPatients}" var="patient">
						<tr>
							<td>${patient.patientId}</td>
							<td>${patient.firstName}</td>
							<td>${patient.lastName}</td>
							<td>${patient.age}</td>
							<td>${patient.gender}</td>
							<td>${patient.dateOfBirth}</td>
							<td>${patient.mobileNumber}</td>
							<td>${patient.altMobileNumber}</td>
							<td>${patient.emailId}</td>
							<td>${patient.address}</td>
							<td>${patient.city}</td>
							<td>${patient.state}</td>
							<td>${patient.zipCode}</td>
							<td><a
								href="<c:url value='patient/edit/${patient.patientId}' />">Edit</a></td>
							<td><a
								href="<c:url value='patient/remove/${patient.patientId}' />">Delete</a></td>
						</tr>
					</c:forEach>
				</table>
			</c:if>
			<br /> <br /> <br /> <a href="addPatient"> Click here to Add
				Patient details</a> <br /> <br /> <a
				href="${pageContext.request.contextPath}/home"> Back</a> <br />
		</center>
	</form:form>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="${contextPath}/resources/js/bootstrap.min.js"></script>

</body>
</html>