<%@page pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/WEB-INF/views/common/head.jsp"%>
<script type="text/javascript">
	function paging(pageNo) {
		$("#pageNo").val(pageNo);
		$("#searchForm").submit();
	}

	$(function() {

		// Clear search conditional
		$('#btnClear').click(function() {
			$("#pageNo").val('');
			$("#code").val('');
			$("#name").val('');
			$("#searchForm").submit();
		})

	})
</script>
</head>
<body>
	<section id="container">
		<%@include file="/WEB-INF/views/common/navibars.jsp"%>

		<div class="row">
			<!--Begin aside bar -->
			<div class="col-md-2" style="background-color: #34495e;">
				<ul class="nav nav-pills flex-column">
				  <li class="nav-item">
				    <a class="nav-link " href="<c:url value="/"/>" ><spring:message code="recordIndex.homepage"/></a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link " href="<c:url value="/department"/>" ><spring:message code="recordIndex.department"/></a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="<c:url value="/employee"/>" ><spring:message code="recordIndex.employee"/></a>
				  </li>
				  <li class="nav-item ">
				    <a class="nav-link active" href="<c:url value="/record"/>" ><spring:message code="recordIndex.recording"/></a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link " href="<c:url value="/statistic"/>" ><spring:message code="recordIndex.statistic"/></a>
				  </li>
				</ul>
			</div>
			<!--End aside bar -->
			<div class="col-md-10" style="background-color: #ecf0f1;">
				<section id="main-content">
					<section class="wrapper">
						<div>&nbsp;</div>
						<div class="container">
							<h2><spring:message code="recordIndex.title"/></h2>
							
							<br>
							<h2><spring:message code="recordIndex.label"/></h2>
							
							<!-- Begin Top Message -->
							<c:if test="${not empty sessionMessageDto}">
							        <div>
							            <div class="alert alert-success alert-dismissible fade show" role="alert">
							                 <spring:message code="${sessionMessageDto.messageCode}" arguments="${sessionMessageDto.messageArgs}" />
							                 <button type="button" class="close" data-dismiss="alert" aria-label="Close">
							                     <span aria-hidden="true">&times;</span>
							                 </button>
							            </div>
							        </div>
							        </c:if>
							<!-- End Top Message -->

							<!-- Begin Search screen -->
							<div>
								<spring:url value="/record" var="listAction"></spring:url>
								<form:form modelAttribute="recordSearchForm" method="GET"
									action="${listAction}" id="searchForm">
									<form:hidden path="pn" id="pageNo" />

									<div class="row">
										<div class="form-group col">
											<label for="employeeId"><spring:message code="recordIndex.employee.label"/>: </label>
											<form:select path="employeeId" cssClass="form-control"
												cssErrorClass="form-control is-invalid">
												<form:option value="">----- <spring:message code="recordIndex.select.employee.label"/> -----</form:option>
												<form:options items="${employees}" itemValue="id"
													itemLabel="name" />
											</form:select>
											<div class="invalid-feedback">
												<form:errors path="employeeId" />
											</div>
										</div>
									</div>

									<div class="row">
										<div class="form-group col">
											<label for="code"><spring:message code="recordIndex.employee.code.label"/>:</label>
											<form:input path="code" cssClass="form-control"
												cssErrorClass="form-control is-invalid" />
											<div class="invalid-feedback">
												<form:errors path="code" />
											</div>
										</div>

										<div class="form-group col">
											<label for="reason"><spring:message code="recordIndex.employee.reason.label"/>: </label>
											<form:input path="reason" cssClass="form-control"
												cssErrorClass="form-control is-invalid" />
											<div class="invalid-feedback">
												<form:errors path="reason" />
											</div>
										</div>
									</div>

									<button type="submit" class="btn btn-primary" id="btnSearch">
										<i class="fas fa-search"></i> <spring:message code="common.button.search"/>
									</button>
									<button type="reset" class="btn btn-warning" id="btnClear">
										<i class="fas fa-eraser"></i> <spring:message code="common.button.clear"/>
									</button>
								</form:form>
							</div>
							<!-- End Search screen -->
							<div>&nbsp;</div>
							<!-- Begin List screen -->
							<div>
								<div class="row">
									<div class="col">
										<a
											href="<spring:url value="/record/createRecord"></spring:url>"
											class="btn btn-success"> <i class="fas fa-plus-square"></i>
											<spring:message code="common.button.create"/>
										</a>
									</div>
									<div class="col">
										<jsp:include page="/WEB-INF/views/common/paging.jsp">
											<jsp:param name="paging" value="${paging}" />
										</jsp:include>
									</div>
								</div>
								<table class="table table-striped">
									<thead>
										<tr>
											<th><spring:message code="label.record.no"/></th>
							                <th><spring:message code="label.record.code"/></th>
							                <th><spring:message code="label.record.type"/></th>
							                <th><spring:message code="label.record.reason"/></th>
							                <th><spring:message code="label.record.nameEmployee"/></th>
							                <th align="center"><spring:message code="label.record.action"/></th>
										</tr>
									</thead>
									<tbody>
										<c:if test="${fn:length(listRecords) > 0}">
                                        <c:forEach items="${listRecords}" var="record" varStatus="loop">
                                        <tr>
                                            <td>${loop.index + 1}</td>
                                            <td>${record.code}</td>
                                            <td>${record.type}</td>
                                            <td>${record.reason}</td>
                                            <td>${record.employeeName}</td>
                                            <td>
                                                <a href='<spring:url value="/record/updateRecord/${record.id}"></spring:url>'>
                                                        <font color="green" size="4px"><i class="far fa-edit"></i></font>
                                                </a> 
                                                <a href='<spring:url value="/record/removeRecord/${record.id}"></spring:url>'>
                                                        <font color="red" size="4px"><i class="far fa-trash-alt"></i></font>
                                                </a>
                                            </td>
                                        </tr>
                                        </c:forEach>
                                        </c:if>
									</tbody>
								</table>
								<!-- Start Bottom Create and Paging -->
								<div class="row">
									<div class="col">
										<a
											href="<spring:url value="/record/createRecord"></spring:url>"
											class="btn btn-success"> <i class="fas fa-plus-square"></i>
											<spring:message code="common.button.create"/>
										</a>
									</div>
									<div class="col">
										<jsp:include page="/WEB-INF/views/common/paging.jsp">
											<jsp:param name="paging" value="${paging}" />
										</jsp:include>
									</div>
								</div>
								<!--End Bottom Create and Paging -->
							</div>
							<!-- End List screen -->
						</div>
					</section>
				</section>
			</div>
		</div>
	</section>


</body>
</html>