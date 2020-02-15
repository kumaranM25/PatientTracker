<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Doctors Maintaining Page</title>
<style type="text/css">
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
	background-color: #f0f0f0;
}

.table .table-4eph {
	background-color: #f9f9f9
}
</style>

</head>
<body>
	<form:form commandName="listDoctors">
		<center>
			<h2>Doctors List</h2>
		</center>
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
		<br />
		<br />
		<br />
		<center>
			<a href="addDoctor"> Click here to Add Doctor details</a> <br /> <br />
			<a href="index.jsp"> Back</a> <br />
		</center>
	</form:form>
</body>
</html>