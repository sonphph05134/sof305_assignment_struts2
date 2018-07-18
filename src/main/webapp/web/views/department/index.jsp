<%@page pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/WEB-INF/views/common/head.jsp"%>
<script type="text/javascript">
    function paging(pageNo){
        $("#pageNo").val(pageNo);
        $("#searchForm").submit();
    }
    $(function(){
        //Clear search conditional
        $('#btnClear').click(function(){
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
                    <a class="nav-link " href="<c:url value="/"/>" ><spring:message code="homepageIndex.homepage"/></a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link active" href="<c:url value="/department"/>" ><spring:message code="homepageIndex.department"/></a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/employee"/>" ><spring:message code="homepageIndex.employee"/></a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link " href="<c:url value="/record"/>" ><spring:message code="homepageIndex.recording"/></a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link " href="<c:url value="/statistic"/>" ><spring:message code="homepageIndex.statistic"/></a>
                  </li>
                </ul>
            </div>
        <!--End aside bar -->
            <div class="col-md-10" style="background-color: #ecf0f1;">
                <section id="main-content">
                    <section class="wrapper">
                        <div >&nbsp; </div>
                        <div class="container">
                            <h2><spring:message code="departmentIndex.title"/></h2>
                            <div >&nbsp; </div>
                            <h2><spring:message code="departmentIndex.title.label"/></h2>
                            <div >&nbsp; </div>
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
                            <div >&nbsp; </div>
                            <!-- Begin Search screen -->
                            <div>
                                <spring:url value="/department" var="listAction"></spring:url>
                                <form:form modelAttribute="departmentSearchForm" method="GET" action="${(listAction)}" id="searchForm">
                                    <form:hidden path="pn" id="pageNo"/>
                                    <div class="row">
                                        <div class="form-group col">
                                            <label for="code"><spring:message code="departmentIndex.code.label"/></label> 
                                            <form:input path="code" cssClass="form-control" cssErrorClass="form-control is-invalid"/>
                                            <div class=invalid-feedback"><form:errors path="code"/></div>
                                        </div>
                                        
                                        <div class="form-group col">
                                            <label for="name"><spring:message code="departmentIndex.name.label"/></label> 
                                            <form:input path="name" cssClass="form-control" cssErrorClass="form-control is-invalid"/>
                                            <div class=invalid-feedback"><form:errors path="name"/></div>
                                        </div>
                                    </div>
                                    <button type="submit" class="btn btn-primary" id="btnSearch">
                                            <i class="fas fa-search"></i>
                                            <spring:message code="departmentIndex.button.search.label"/>
                                    </button>
                                    <button type="reset" class="btn btn-warning" id="btnClear">
                                            <i class="fas fa-eraser"></i>
                                            <spring:message code="departmentIndex.button.clear.label"/>
                                    </button>
                                </form:form>
                            </div>
                            <!-- End Search screen -->
                            
                            <div class="form-group">&nbsp;</div>
                            
                            <!-- Begin List screen -->
                            <div>
                                
                                <div class="row">
                                    <div class="col">
                                    <a href="<spring:url value="/department/create"></spring:url>" class="btn btn-success">
                                            <i class="fas fa-plus-square"></i> 
                                            <spring:message code="departmentIndex.button.create.label"/>
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
                                            <th><spring:message code="label.department.no"/></th>
                                            <th><spring:message code="label.department.code"/></th>
                                            <th><spring:message code="label.department.name"/></th>
                                            <th align="center"><spring:message code="label.department.action"/></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:if test="${fn:length(listDepartments) > 0}">
                                        <c:forEach items="${listDepartments}" var="department" varStatus="loop">
                                        <tr>
                                            <td>${loop.index + 1}</td>
                                            <td>${department.code}</td>
                                            <td>${department.name}</td>
                                            <td>
                                                <a href='<spring:url value="/department/update/${department.id}"></spring:url>'>
                                                        <font color="green" size="4px"><i class="far fa-edit"></i></font>
                                                </a> 
                                                <a href='<spring:url value="/department/remove/${department.id}"></spring:url>'>
                                                        <font color="red" size="4px"><i class="far fa-trash-alt"></i></font>
                                                </a>
                                            </td>
                                        </tr>
                                        </c:forEach>
                                        </c:if>
                                    </tbody>
                                </table>
                                <div class="row">
                                    <div class="col">
                                    <a href="<spring:url value="/department/create"></spring:url>" class="btn btn-success">
                                            <i class="fas fa-plus-square"></i> 
                                            <spring:message code="departmentIndex.button.create.label"/>
                                        </a>
                                    </div>
                                    <div class="col">
                                        <jsp:include page="/WEB-INF/views/common/paging.jsp">
                                            <jsp:param name="paging" value="${paging}" /> 
                                        </jsp:include>
                                    </div>
                                </div>
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