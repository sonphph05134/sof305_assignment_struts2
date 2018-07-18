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

    $(function(){

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
						    <a class="nav-link " href="<c:url value="/"/>" ><spring:message code="employeeIndex.homepage"/></a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link" href="<c:url value="/department"/>" ><spring:message code="employeeIndex.department"/></a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link active" href="<c:url value="/employee"/>" ><spring:message code="employeeIndex.employee"/></a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link " href="<c:url value="/record"/>" ><spring:message code="employeeIndex.recording"/></a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link " href="<c:url value="/statistic"/>" ><spring:message code="employeeIndex.statistic"/></a>
						  </li>
                        </ul>
                    </div>
                <!--End aside bar -->
                    <div class="col-md-10" style="background-color: #ecf0f1;">
                        <section id="main-content">
                            <section class="wrapper">
                                <div >&nbsp; </div>
                                <div class="container">
                                    <h2><spring:message code="employeeIndex.title"/></h2>
                            		<div>&nbsp;</div>
                            		<h2><spring:message code="employeeIndex.title.label"/></h2>
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
		                                <spring:url value="/employee" var="listAction"></spring:url>
		                                <form:form modelAttribute="employeeSearchForm" method="GET" action="${listAction}" id="searchForm">
		                                     <form:hidden path="pn" id="pageNo"/>
		                    
		                                     <div class="row">
		                                        <div class="form-group col">
		                                             <label for="departmentId"><spring:message code="employeeIndex.department"/>: </label>
		                                             <form:select path="departmentId" cssClass="form-control" cssErrorClass="form-control is-invalid">
		                                                <form:option value="">-----   <spring:message code="employeeIndex.select.department.label"/>  -----</form:option>
		                                                <form:options items="${departments}" itemValue="id" itemLabel="name"/>
		                                             </form:select>
		                                             <div class="invalid-feedback"><form:errors path="departmentId"/></div>
		                                         </div>
		                                     </div>
		                    
		                                     <div class="row">
		                                        <div class="form-group col">
		                                             <label for="code"><spring:message code="employeeIndex.code.label"/></label>
		                                             <form:input path="code" cssClass="form-control" cssErrorClass="form-control is-invalid"/>
		                                             <div class="invalid-feedback"><form:errors path="code"/></div>
		                                         </div>
		                        
		                                         <div class="form-group col">
		                                             <label for="name"><spring:message code="employeeIndex.name.label"/></label>
		                                             <form:input path="name" cssClass="form-control" cssErrorClass="form-control is-invalid"/>
		                                             <div class="invalid-feedback"><form:errors path="name"/></div>
		                                         </div>
		                                     </div>
		                    
		                                     <button type="submit" class="btn btn-primary" id="btnSearch"><i class="fas fa-search"></i> <spring:message code="common.button.search"/></button>
		                                     <button type="reset" class="btn btn-warning" id="btnClear"><i class="fas fa-eraser"></i> <spring:message code="common.button.clear"/></button>
		                                </form:form>
		                            </div>
		                            <!-- End Search screen -->
                            
                            		<div class="form-group">&nbsp;</div>
                            
		                            <!-- Begin List Employee screen -->
		                            <div>
		                               <div class="">&nbsp;</div>
		                                 <div class="row">
		                                     <div class="col">
		                                        <a href="<spring:url value="/employee/createEmployee"></spring:url>" class="btn btn-success">
		                                            <i class="fas fa-plus-square"></i> <spring:message code="common.button.create"/>
		                                        </a>
		                                     </div>
			                                 <div class="col">
			                                    <jsp:include page="/WEB-INF/views/common/paging.jsp">
			                                          <jsp:param name="paging" value="${paging}" /> 
			                                    </jsp:include>
			                                 </div>
		                                </div>
		                                 <table class="table table-bordered table-hover">
		                                    <thead class="thead-light">
		                                        <tr>
		                                        	<th><spring:message code="label.employee.no"/></th>
							                        <th><spring:message code="label.employee.code"/></th>
							                        <th><spring:message code="label.employee.name"/></th>
							                        <th><spring:message code="label.employee.gender"/></th>
							                        <th><spring:message code="label.employee.image"/></th>
							                        <th><spring:message code="label.employee.birthday"/></th>
							                        <th><spring:message code="label.employee.phone"/></th>
							                        <th><spring:message code="label.employee.email"/></th>
							                        <th><spring:message code="label.employee.salary"/></th>
							                        <th><spring:message code="label.employee.notes"/></th>
							                        <th align="center"><spring:message code="label.employee.action"/></th>
		                                        </tr>
		                                    </thead>
		                                    <tbody>
		                                        <c:if test="${fn:length(listEmployees) > 0}">
		                                        <c:forEach items="${listEmployees}" var="employee" varStatus="loop">
		                                        <tr>
		                                            <td>${loop.index + 1}</td>
		                                            <td>${employee.code}</td>
		                                            <td>${employee.name}</td>
		                                            <td>${employee.gender}</td>
		                                            <td align="center">
		                                                <c:if test="${not empty employee.photo}">
		                                                    <img alt="${employee.code}" src="<spring:url value="/upload/${employee.photo}"></spring:url>" width="100px"/>
		                                                </c:if>
		                                                <c:if test="${empty employee.photo}">
		                                                    <img alt="${employee.code}" src="<spring:url value="/upload/default-user-image.png"></spring:url>" width="100px"/>
		                                                </c:if>
		                                            </td>
		                                            <td>${employee.birthday }</td>
		                                            <td>${employee.phone }</td>
		                                            <td>${employee.email }</td>
		                                            <td>${employee.salary }</td>
		                                            <td>${employee.notes }</td>
		                                            <td align="center">
		                                                <a href="<spring:url value="/employee/updateEmployee/${employee.id}"></spring:url>">
		                                                    <font color="green" size="4"><i class="fas fa-edit"></i></font>
		                                                </a> 
		                                                <a href="<spring:url value="/employee/removeEmployee/${employee.id}"></spring:url>">
		                                                    <font color="red" size="4"><i class="fas fa-trash-alt"></i></font>
		                                                </a>
		                                            </td>
		                                        </tr>
		                                        </c:forEach>
		                                        </c:if>
		                                    </tbody>
		                                </table>
		                                <div class="row">
		                                    <div class="col">
		                                        <a href="<spring:url value="/employee/createEmployee"></spring:url>" class="btn btn-success">
		                                            <i class="fas fa-plus-square"></i> <spring:message code="common.button.create"/>
		                                        </a>
		                                    </div>
		                                    <div class="col">
		                                        <jsp:include page="/WEB-INF/views/common/paging.jsp">
		                                            <jsp:param name="paging" value="${paging}" /> 
		                                        </jsp:include>
		                                    </div>
		                                </div>
		                            </div>
                            <!-- End List Employee screen -->
                            </section>
                        </section>
                    </div>
                </div>

        </section>
</body>
</html>