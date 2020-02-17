<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Prescription Maintaining Page</title>
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
<form:form commandName="listPrescription" >
	<center>
		<h1>
			Prescription Maintaining Page
		</h1>
		<br /> <br />
		<center>
			<h1>Prescription List</h1>
		</center>
		<c:if test="${!empty listPrescription}">
			<table class="table">
				<tr>
					<th width="80">Request_ID</th>
					<th width="120">Patient_ID</th>
					<th width="120">Doctor_ID</th>
					<th width="80">Request_Date</th>
					<th width="80">Medicine_ID1</th>
					<th width="120">Quantity1</th>
					<th width="120">Medicine_ID2</th>
					<th width="120">Quantity2</th>
					<th width="120">Medicine_ID3</th>
					<th width="120">Quantity3</th>
					<th width="120">Medicine_ID4</th>
					<th width="120">Quantity4</th>
					<th width="120">Medicine_ID5</th>
					<th width="120">Quantity5</th>
					<th width="120">Other_Info</th>
					<th width="120">Status</th>
					<th width="60">Edit</th>
					<th width="60">Delete</th>
				</tr>
				<c:forEach items="${listPrescription}" var="prescription">
					<tr>
						<td>${prescription.requestID}</td>
						<td>${prescription.patientID}</td>
						<td>${prescription.doctorID}</td>
						<td>${prescription.requestDate}</td>
						<td>${prescription.medicineID1}</td>
						<td>${prescription.quantity1}</td>
						<td>${prescription.medicineID2}</td>
						<td>${prescription.quantity2}</td>
						<td>${prescription.medicineID3}</td>
						<td>${prescription.quantity3}</td>
						<td>${prescription.medicineID4}</td>
						<td>${prescription.quantity4}</td>
						<td>${prescription.medicineID5}</td>
						<td>${prescription.quantity5}</td>
						<td>${prescription.otherInfo}</td>
						<td>${prescription.status}</td>
						<td><a href="<c:url value='/editPrescription/${prescription.requestID}' />">Edit</a></td>
						<td><a href="<c:url value='/removePrescription/${prescription.requestID}' />">Delete</a></td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
		<br /> <br /> <a href="${pageContext.request.contextPath}/addPrescription"> Click here to Add prescription details</a>
		<br /> <br /> <a href="${pageContext.request.contextPath}/home"> Back</a> <br />
	</center>
</form:form>
</body>
</html>