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
<title>Doctors Maintaining Page</title>

<link href="${contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${contextPath}/resources/css/common.css" rel="stylesheet">

<style type="text/css">
body {
	font-family: sans-serif;
	color: #03396c;
	font-size: 14px;
	margin: 20px;
}

.table {
	font-family: verdana, arial, sans-serif;
	font-size: 13px;
	color: #333333;
	border-width: 1px;
	border-color: #999999;
	border-collapse: collapse;
}

.table td {
	border-width: 2px;
	padding: 8px;
	border-style: solid;
	border-color: black;
}

.table th {
	background-color: #c3dde0;
	border-width: 2px;
	padding: 8px;
	border-style: solid;
	border-color: black;
}

.table.table tr {
	background-color: #d4e3e5;
}
</style>

</head>
<body>
	<form:form commandName="listDoctors">
		<center>
			<h1>Doctor Maintaining Page</h1>
			<br/>
			<center>
				<h2>Doctors List</h2>
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

			<c:if test="${!empty listDoctors}">
				<table class="table">
					<tr>
						<th width="80">Doctor ID</th>
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
						<th width="120">Degree</th>
						<th width="120">Speciality</th>
						<th width="120">Work Hours</th>
						<th width="120">Hospital Name</th>
						<th width="60">Edit</th>
						<th width="60">Delete</th>
					</tr>
					<c:forEach items="${listDoctors}" var="doctor">
						<tr>
							<td>${doctor.doctorId}</td>
							<td>${doctor.firstName}</td>
							<td>${doctor.lastName}</td>
							<td>${doctor.age}</td>
							<td>${doctor.gender}</td>
							<td>${doctor.dateOfBirth}</td>
							<td>${doctor.mobileNumber}</td>
							<td>${doctor.altMobileNumber}</td>
							<td>${doctor.emailId}</td>
							<td>${doctor.address}</td>
							<td>${doctor.city}</td>
							<td>${doctor.state}</td>
							<td>${doctor.zipCode}</td>
							<td>${doctor.degree}</td>
							<td>${doctor.speciality}</td>
							<td>${doctor.workHours}</td>
							<td>${doctor.hospitalName}</td>
							<td><a
								href="<c:url value='doctor/edit/${doctor.doctorId}' />">Edit</a></td>
							<td><a
								href="<c:url value='doctor/remove/${doctor.doctorId}' />">Delete</a></td>
						</tr>
					</c:forEach>
				</table>
			</c:if>
			<br /> <br /> <br /> <a href="addDoctor"> Click here to Add
				Doctor details</a> <br /> <br /> <a
				href="${pageContext.request.contextPath}/home"> Back</a> <br />
		</center>
	</form:form>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="${contextPath}/resources/js/bootstrap.min.js"></script>

</body>
</html>