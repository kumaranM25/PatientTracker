<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page session="true"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<html>
<body>
	<form:form modelAttribute="user">
		<%-- <h1>Name : ${user.emailId}</h1> --%>

		<%-- <c:if test="${pageContext.request.userPrincipal.name != null}"> --%>
		<h2>
			Welcome : ${user.emailId} | <a href="<c:url value="/logout" />">
				Logout</a>
		</h2>
		<%-- </c:if> --%>
		<a href="${contextPath}/clerk"> Click here to Create/Maintain
			Clerk details</a>
		<br />
		<a href="${contextPath}/doctor"> Click here to Create/Maintain
			Doctor details</a>
		<br />
		<a href="${contextPath}/patient"> Click here to Create/Maintain
			Patient details</a>
		<br />
	</form:form>
</body>
</html>
