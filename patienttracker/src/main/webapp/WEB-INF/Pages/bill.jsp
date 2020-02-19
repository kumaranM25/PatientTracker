<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title><spring:message code="bill" text="Generate Bill" /></title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<body>
	<div class="container">
		<nav class="navbar navbar-light bg-light">
			<a class="btn btn-primary" href="${contextPath}/prescription" role="button">Back</a>
			<a class="navbar-brand">Create Bill</a>
			<div></div>
		</nav>
		<div class="card">
			<div class="card-body">
				<%-- <c:choose>
					<c:when test="${prescription != null}">
						<c:set var="action" scope="session"
							value="${'/prescription/manage?requestId='}${prescription.requestId}" />
					</c:when>
					<c:otherwise>
						<c:set var="action" scope="session"
							value="${'/prescription/manage'}" />
					</c:otherwise>
				</c:choose> --%>
				<div>
					<div class="form-row">
						<div class="col-md-4 mb-4">
							<b><label for="patientId">Patient:</label></b>
							<p>
								<c:out value="${patient.firstName}" />
								<c:out value="${patient.lastName}" />
								(ID:
								<c:out value="${patient.patientId}" />
								)
							</p>
						</div>
	
						<div class="col-md-4 mb-4">
							<b><label for="patientId">Doctor:</label></b>
							<p>
								<c:out value="${doctor.firstName}" />
								<c:out value="${doctor.lastName}" />
								(ID:
								<c:out value="${doctor.doctorId}" />
								)
							</p>
						</div>
	
						<div class="col-md-4 mb-4">
							<b><label for="patientId">Request Date(DD-MM-YYYY)</label></b>
							<p>
								<c:out value="${prescription.requestDate}" />
							</p>
						</div>
	
	
	
					</div>
	<!-- class="needs-validation" novalidate -->
	<%-- action="/bill/manage?requestId=<c:out value="${prescription.requestId}"/>" --%>
					<form:form  method="post" modelAttribute="bill" >
						<table class="table table-hover">
							<thead>
								<tr>
									<th>Medicines</th>
									<th>Quantity</th>
									<th class="text-center">Price</th>
									<th class="text-center">Total</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="col-md-6"><em><c:out
												value="${bill.m1Desc}" /></em>
									</td>
									<td class="col-md-4" style="text-align: center">
										<div class="row">
											<div class="form-group">
										      <input type="text" pattern="^[0-9]{1,3}$" name="quantity1" class="form-control" value="<c:out value="${bill.quantity1}" />" style="text-align: center"/>
										    </div>
									    </div>
									</td>
									<td class="cls_unit col-md-1 text-center"><c:out
											value="${bill.m1Price}" /></td>
									<td class="cls_pertotal col-md-1 text-center"><c:out
											value="${bill.amount1}" /></td>
								</tr>
								<tr>
									<td class="col-md-9"><em><c:out
												value="${bill.m2Desc}" /></em>
									</td>
									<td class="col-md-1" style="text-align: center">
										<div class="row">
											<div class="form-group">
										      <input type="text" pattern="^[0-9]{1,3}$" name="quantity2" class="form-control" value="<c:out value="${bill.quantity2}" />" style="text-align: center"/>
										    </div>
									    </div>
									</td>
									<td class="cls_unit col-md-1 text-center"><c:out
											value="${bill.m2Price}" /></td>
									<td class="cls_pertotal col-md-1 text-center"><c:out
											value="${bill.amount2}" /></td>
								</tr>
								<tr>
									<td class="col-md-9"><em><c:out
												value="${bill.m3Desc}" /></em>
									</td>
									<td class="col-md-1" style="text-align: center">
										<div class="row">
											<div class="form-group">
										      <input type="text" pattern="^[0-9]{1,3}$" name="quantity3" class="form-control" value="<c:out value="${bill.quantity3}" />" style="text-align: center"/>
										    </div>
									    </div>
									</td>
									<td class="cls_unit col-md-1 text-center"><c:out
											value="${bill.m3Price}" /></td>
									<td class="cls_pertotal col-md-1 text-center"><c:out
											value="${bill.amount3}" /></td>
								</tr>
								<tr>
									<td class="col-md-9"><em><c:out
												value="${bill.m4Desc}" /></em>
									</td>
									<td class="col-md-1" style="text-align: center">
										<div class="row">
											<div class="form-group">
										      <input type="text" pattern="^[0-9]{1,3}$" name="quantity4" class="form-control" value="<c:out value="${bill.quantity4}" />" style="text-align: center"/>
										    </div>
									    </div>
									</td>
									<td class="cls_unit col-md-1 text-center"><c:out
											value="${bill.m4Price}" /></td>
									<td class="cls_pertotal col-md-1 text-center"><c:out
											value="${bill.amount4}" /></td>
								</tr>
								<tr>
									<td class="col-md-9"><em><c:out
												value="${bill.m5Desc}" /></em>
									</td>
									<td class="col-md-4" style="text-align: center">
										<div class="row">
											<div class="form-group">
										      <input type="text" pattern="^[0-9]{1,3}$" name="quantity1" class="form-control" value="<c:out value="${bill.quantity5}" />" style="text-align: center"/>
										    </div>
									    </div>
									</td>
									<td class="cls_unit col-md-1 text-center"><c:out
											value="${bill.m5Price}" /></td>
									<td class="cls_pertotal col-md-1 text-center"><c:out
											value="${bill.amount5}" /></td>
								</tr>
								
								<tr>
									<td> </td>
									<td> </td>
									<td class="text-right">
										<p>
											<strong>Subtotal: </strong>
										</p>
									</td>
									<td class="text-center">
										<p>
											<strong><span class="cls_alltotal"><c:out value="${bill.totalAmount}" /></span></strong>
										</p>
									</td>
								</tr>
								<tr>
									<td> </td>
									<td> </td>
									<td class="text-right"><h4>
											<strong>Total: </strong>
										</h4></td>
									<td class="text-center text-danger"><h4>
											<strong><span class="cls_alltotal"><c:out value="${bill.totalAmount}" /></span></strong>
										</h4></td>
								</tr>
							</tbody>
						</table>
						<c:choose>
							<c:when test="${prescription.status!='B'}">
							<button class="btn btn-primary" type="submit">Generate Bill</button>
							</c:when>
						</c:choose>
					</form:form>
	
				</div>
			</div>
		</div>
	
	
		<c:choose>
			<c:when test="${update != null}">
				<div style="min-height: 300px;" class="cls_notification d-none">
					<!-- Position toasts -->
					<div style="position: absolute; top: 0; right: 0; min-width: 300px;">
						<div class="toast fade show" role="alert" aria-live="assertive"
							aria-atomic="true" data-delay="5000">
							<div class="toast-header">
								<strong class="mr-auto"><i class="fa fa-globe"></i>
									Notification</strong>
							</div>
							<div class="toast-body">Bill generated successfully!</div>
						</div>
					</div>
				</div>
				<script>
					$(document).ready(function() {
						$('.cls_notification').removeClass('d-none');
						$('.toast').toast('show');
					});
				</script>
			</c:when>
		</c:choose>

		<script>
			// Example starter JavaScript for disabling form submissions if there are invalid fields
			(function() {
				<c:choose>
					<c:when test="${prescription.status!='B'}">
				
					$('input').keyup(function() {
						var total = 0;
						var $cur = $(this);
						var $parent = $cur.closest("tr");
						
						var curVal = parseInt($cur.val());
						if(isNaN(curVal)) {
							curVal = 0;
						}
						var curPrice = parseInt($parent.find(".cls_unit").text());
						$parent.find(".cls_pertotal").text(curVal * curPrice);
						
						$(".cls_pertotal").each(function() {
							total += parseInt($(this).text());
						});
						
						$(".cls_alltotal").text(total);
						
					});
				    </c:when>
				</c:choose>
			})();
			
		</script>
	</div>
</body>
</html>