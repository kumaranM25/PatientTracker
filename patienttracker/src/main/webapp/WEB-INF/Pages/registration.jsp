<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Create an account</title>

<link href="${contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${contextPath}/resources/css/common.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
		$("#datepicker").datepicker();
	});
</script>
<script type="text/javascript" lnaguage="javascript">
	$(function() {
		$("#datepicker").datepicker({
			showOn : "both",
			buttonImage : "image.jpg",
			dateFormat : "yy-mm-dd",
			buttonImageOnly : false,
			minDate : +0, //you do not want to show previous date.
			maxDate : +0
		// you do not want to show next day.
		});
	});
</script>
</head>

<body>

	<div class="container">

		<form:form method="POST" modelAttribute="userForm" class="form-signin">
			<h2 class="form-signin-heading">Create your account</h2>
			<spring:bind path="firstName">
				<div class="form-group ${status.error ? 'has-error' : ''}">
					<form:input type="text" path="firstName" class="form-control"
						placeholder="First Name"></form:input>
					<form:errors path="firstName"></form:errors>
				</div>
			</spring:bind>
			<spring:bind path="lastName">
				<div class="form-group ${status.error ? 'has-error' : ''}">
					<form:input type="text" path="lastName" class="form-control"
						placeholder="Last Name"></form:input>
					<form:errors path="lastName"></form:errors>
				</div>
			</spring:bind>
			<spring:bind path="dob">
				<div class="form-group ${status.error ? 'has-error' : ''}">
					<form:input type="date" path="dob" class="form-control"
						placeholder="Date of Birth"></form:input>
					<form:errors path="dob"></form:errors>
				</div>
			</spring:bind>
			<spring:bind path="gender">
				<div class="form-group ${status.error ? 'has-error' : ''}">
					<form:select path="gender" placeholder="Gender">
						<form:option value="Gender" label="Gender" />
						<form:option value="Male" label="Male" />
						<form:option value="Female" label="Female" />
					</form:select>
					<%--  <form:input type="password" path="gender" class="form-control" placeholder="Gender"></form:input> --%>
					<form:errors path="gender"></form:errors>
				</div>
			</spring:bind>
			
			<spring:bind path="role.roleId">
				<div class="form-group ${status.error ? 'has-error' : ''}">
					<form:select path="role.roleId" placeholder="Role">
						<form:option value="1" label="Admin" />
						<form:option value="2" label="Clerk" />
						<form:option value="3" label="Doctor" />
						<form:option value="4" label="Patient" />
					</form:select>
					<%--  <form:input type="password" path="gender" class="form-control" placeholder="Gender"></form:input> --%>
					<form:errors path="gender"></form:errors>
				</div>
			</spring:bind>
			
			<spring:bind path="contactNumber">
				<div class="form-group ${status.error ? 'has-error' : ''}">
					<form:input type="text" path="contactNumber" class="form-control"
						placeholder="Contact No"></form:input>
					<form:errors path="contactNumber"></form:errors>
				</div>
			</spring:bind>

			<spring:bind path="emailId">
				<div class="form-group ${status.error ? 'has-error' : ''}">
					<form:input type="text" path="emailId" class="form-control"
						placeholder="Email ID" autofocus="true"></form:input>
					<form:errors path="emailId"></form:errors>
				</div>
			</spring:bind>

			<spring:bind path="password">
				<div class="form-group ${status.error ? 'has-error' : ''}">
					<form:input type="password" path="password" class="form-control"
						placeholder="Password"></form:input>
					<form:errors path="password"></form:errors>
				</div>
			</spring:bind>

			<%-- <spring:bind path="passwordConfirm">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="password" path="passwordConfirm" class="form-control"
                                placeholder="Confirm your password"></form:input>
                    <form:errors path="passwordConfirm"></form:errors>
                </div>
            </spring:bind> --%>


			<button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
		</form:form>

	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
