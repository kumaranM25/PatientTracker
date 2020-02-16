<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<!-- fontawesome icons -->
<script src="https://kit.fontawesome.com/a076d05399.js"></script>

<%-- <link href="${contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script> --%>
</head>
<body>
	<form:form modelAttribute="user">
		<%-- <h1>Name : ${user.emailId}</h1> --%>

		<%-- <c:if test="${pageContext.request.userPrincipal.name != null}"> 
		 </c:if> --%>

		<%-- <h3 class=".text-left">PatientTracker</h3>
		<h4 class=".text-left">
			Welcome : ${pageContext.request.userPrincipal.name} | <a href="<c:url value="/logout" />">
				Logout</a>
		</h4> --%>
		<%-- <jsp:include page="header.jsp"></jsp:include> --%>
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<span class="navbar-brand">PatientTracker</span>
				</div>
				<ul class="nav navbar-nav navbar-right">
					<li><span class="fa fa-user"></span>
						${pageContext.request.userPrincipal.name}</li>
					<li><span class="fas fa-sign-out-alt"></span><a
						href="<c:url value="/logout"/>">Logout</a></li>
				</ul>
			</div>
		</nav>

		<div class="container">
			<a href="${contextPath}/clerk"> Click here to Create/Maintain
				Clerk details</a> <br /> <a href="${contextPath}/doctor"> Click
				here to Create/Maintain Doctor details</a> <br /> <a
				href="${contextPath}/patient"> Click here to Create/Maintain
				Patient details</a> <br />
		</div>
	</form:form>
</body>
</html>
