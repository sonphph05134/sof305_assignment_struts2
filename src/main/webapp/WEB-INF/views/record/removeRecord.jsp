<%@page pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <%@include file="/WEB-INF/views/common/common.jsp"%>
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
                         <a class="nav-link " href="<s:url value="/home"/>"> <s:text name="nar.homepage.title"/></a>
                     </li>
                     <li class="nav-item">
                         <a class="nav-link " href="<s:url value="/department"/>" ><s:text name="nar.department.title"/></a>
                     </li>
                     <li class="nav-item">
                         <a class="nav-link " href="<s:url value="/employee"/>" ><s:text name="nar.employee.title"/></a>
                     </li>
                     <li class="nav-item">
                         <a class="nav-link  active" href="<s:url value="/record"/>" ><s:text name="nar.record.title"/></a>
                     </li>
                     <li class="nav-item">
                         <a class="nav-link " href="<s:url value="/statistic"/>" ><s:text name="nar.statistic.title"/></a>
                     </li>
                 </ul>
            </div>
            <!--End aside bar -->
            <div class="col-md-10" style="background-color: #ecf0f1;">
                 <div class="form-group">&nbsp;</div>

                <div class="container">
                    
                    <h2><spring:message code="recordIndex.title"/></h2>
                    
                    <h3><spring:message code="recordRemove.title"/></h3>
                    <div class="form-group">&nbsp;</div>
            
                    <!-- BEGIN CREATE FORM -->
                    <div>
						 <spring:url value="/record/removeRecord/${id}" var="formAction"></spring:url>
				            <form:form action="${formAction}" method="POST" modelAttribute="recordRemoveForm">
				
				                <div class="form-group row">
				                    <label for="code" class="col-sm-2 col-form-label"><strong><spring:message code="label.record.code"/>:</strong></label>
				                    <div class="col-sm-10">
				                        <form:input path="code" cssClass="form-control" cssErrorClass="form-control is-invalid" readonly="true"/>
				                        <div class="invalid-feedback"><form:errors path="code"/></div>
				                    </div>
				                </div>
				
				                <div class="form-group row">
				                    <label for="reason" class="col-sm-2 col-form-label"><strong><spring:message code="label.record.reason"/>:</strong></label>
				                    <div class="col-sm-10">
				                        <form:input path="reason" cssClass="form-control" cssErrorClass="form-control is-invalid"  readonly="true"/>
				                        <div class="invalid-feedback"><form:errors path="reason"></form:errors></div>
				                    </div>
				                </div>
				                
				                <div class="form-group row">
				                    <label for="name" class="col-sm-2 col-form-label"></label>
				                    <div class="col-sm-10">
				                        <button type="submit" class="btn btn-danger"><i class="fas fa-trash-alt"></i> <spring:message code="label.record.button.remove"/></button>
				                        <a href="<spring:url value="/record"/>" class="btn btn-warning"><i class="fas fa-angle-left"></i> <spring:message code="label.record.button.back"/></a>
				                    </div>
				                </div>
				            </form:form>
                    </div>
                        <!-- END CREATE FORM -->
    
                </div>
            </div>
        </div>
    </section>
	
</body>
</html>