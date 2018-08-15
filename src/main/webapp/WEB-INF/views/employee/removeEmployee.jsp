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
                         <a class="nav-link " href="<s:url value="/home"/>"> <s:text name="nar.homepage.title"/></a>
                     </li>
                     <li class="nav-item">
                         <a class="nav-link " href="<s:url value="/department"/>" ><s:text name="nar.department.title"/></a>
                     </li>
                     <li class="nav-item">
                         <a class="nav-link active" href="<s:url value="/employee"/>" ><s:text name="nar.employee.title"/></a>
                     </li>
                     <li class="nav-item">
                         <a class="nav-link  " href="<s:url value="/record"/>" ><s:text name="nar.record.title"/></a>
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
                    
                    <h2><spring:message code="employeeRemove.title"/> </h2>
                    <div class="">&nbsp;</div>
                    <h3><spring:message code="employeeRemove.title.label"/></h3>
                    
                    <div class="form-group">&nbsp;</div>
            
                    <!-- BEGIN Remove FORM -->
					<div>
							<spring:url value="/employee/removeEmployee/${id}" var="formAction"></spring:url>
                            <form:form action="${formAction}" method="POST" modelAttribute="removeEmployeeForm">
                            
		                    	<div class="row">
		                          <div class="col">
		                               <div class="form-group">
		                                      <label for="code"><strong><spring:message code="employeeIndex.code.label"/>: </strong></label>
		                                      <form:input path="code" cssClass="form-control" cssErrorClass="form-control is-invalid"/>
		                                      <div class="invalid-feedback"><form:errors path="code"/></div>
		                               </div>
		                            
		                               <div class="form-group">
		                                      <label for="name"><strong><spring:message code="employeeIndex.name.label"/>: </strong></label>
		                                      <form:input path="name" cssClass="form-control" cssErrorClass="form-control is-invalid"/>
		                                      <div class="invalid-feedback"><form:errors path="name"/></div>
		                               </div>
		                            
		                               <div class="row">
		                                      <div class="form-group col">
		                                      <button type="submit" class="btn btn-success"><i class="far fa-save"></i> <spring:message code="label.employee.button.submit"/></button>
		                                      <a href="<spring:url value="/employee"/>" class="btn btn-warning"><i class="fas fa-angle-left"></i> <spring:message code="label.employee.button.back"/></a>
		                                	  </div>
		                               </div>
                            	</div>
                               </div>
                            </form:form>
                    </div>
                    <!-- END Remove FORM -->
    
                </div>
            </div>
        </div>
    </section>
	
</body>
</html>