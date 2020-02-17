<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Medicine Maintaining Page</title>
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
<form:form commandName="listMedicine" >
	<center>
		<h1>
			Medicine Maintaining Page
		</h1>
		<br /> <br />
		<center>
			<h1>Medicine List</h1>
		</center>
		<c:if test="${!empty listMedicine}">
			<table class="table">
				<tr>
					<th width="80">Medicine_ID</th>
					<th width="120">Medicine_Description</th>
					<th width="120">Cure_For</th>
					<th width="80">Manufacturing_Company</th>
					<th width="80">Dosage</th>
					<th width="120">Prescribed_For</th>
					<th width="120">Amount</th>
					<th width="60">Edit</th>
					<th width="60">Delete</th>
				</tr>
				<c:forEach items="${listMedicine}" var="medicine">
					<tr>
						<td>${medicine.medicineID}</td>
						<td>${medicine.medicineDescription}</td>
						<td>${medicine.cureFor}</td>
						<td>${medicine.manufacturingCompany}</td>
						<td>${medicine.dosage}</td>
						<td>${medicine.prescribedFor}</td>
						<td>${medicine.amount}</td>
						<td><a href="<c:url value='/editMedicine/${medicine.medicineID}' />">Edit</a></td>
						<td><a href="<c:url value='/removeMedicine/${medicine.medicineID}' />">Delete</a></td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
		<br /> <br /> <a href="${pageContext.request.contextPath}/addMedicine"> Click here to Add medicine details</a>
		<br /> <br /> <a href="${pageContext.request.contextPath}/home"> Back</a> <br />
	</center>
</form:form>
</body>
</html>