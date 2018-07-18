<%@page pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <%@include file="/WEB-INF/views/common/head.jsp"%>
</head>
<body>
        <section id="container">
        <%@include file="/WEB-INF/views/common/navibars.jsp"%>
        <div class="row">
             <!--Begin aside bar -->
             <div class="col-md-2" style="background-color: #34495e;">
                <ul class="nav nav-pills flex-column">
                  <li class="nav-item">
                    <a class="nav-link " href="<c:url value="/"/>"><spring:message code="homepageIndex.homepage"/></a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link active" href="<c:url value="/department"/>"><spring:message code="homepageIndex.department"/></a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link " href="<c:url value="/employee"/>"><spring:message code="homepageIndex.employee"/></a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link " href="<c:url value="/record"/>"><spring:message code="homepageIndex.recording"/></a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link " href="<c:url value="/statistic"/>"><spring:message code="homepageIndex.statistic"/></a>
                  </li>
                </ul>
            </div>
            <!--End aside bar -->
            <div class="col-md-10" style="background-color: #ecf0f1;">
                 <div class="form-group">&nbsp;</div>

                <div class="container">
                    
                    <h1><spring:message code="homepageIndex.department"/></h1>
                    
                    <h1><small><spring:message code="label.department.updateScreen"/></small></h1>
                    <div class="form-group">&nbsp;</div>
            
                    <!-- BEGIN UPdate FORM -->
                    <div>
                        <spring:url value="/department/update/${id}" var="formAction"></spring:url>
                        <form:form action="${formAction}" method="POST" modelAttribute="departmentUpdateForm">
            
                            <div class="form-group row">
                                <label for="code" class="col-sm-2 col-form-label"><strong><spring:message code="departmentIndex.code.label"/></strong></label>
                                <div class="col-sm-10">
                                    <form:input path="code" cssClass="form-control" cssErrorClass="form-control is-invalid"/>
                                    <div class="invalid-feedback"><form:errors path="code"/></div>
                                </div>
                            </div>
            
                            <div class="form-group row">
                                <label for="name" class="col-sm-2 col-form-label"><strong><spring:message code="departmentIndex.name.label"/></strong></label>
                                <div class="col-sm-10">
                                    <form:input path="name" cssClass="form-control" cssErrorClass="form-control is-invalid"/>
                                    <div class="invalid-feedback"><form:errors path="name"></form:errors></div>
                                </div>
                            </div>
                            
                            <div class="form-group row">
                                <label for="name" class="col-sm-2 col-form-label"></label>
                                <div class="col-sm-10">
                                    <button type="submit" class="btn btn-success">
                                    <i class="far fa-save"> </i> 
                                   	  <strong><spring:message code="departmentIndex.button.submit.label"/></strong>
                                   	</button>
                                    <a href="<spring:url value="/department"/>" class="btn btn-warning">
                                  	  <i class="fas fa-angle-left"></i> 
                                   	  <strong><spring:message code="departmentIndex.button.back.label"/></strong>
                                   	</button>
                                   	</a>
                                </div>
                            </div>

                        </form:form>
                    </div>
      			<!-- END Update FORM -->
    
                </div>
            </div>
        </div>
    </section>

</body>
</html>