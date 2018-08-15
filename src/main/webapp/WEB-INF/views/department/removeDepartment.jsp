<%@page pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<%@include file="/WEB-INF/common/head.jsp"%>
</head>
<body>
	<section id="container">
        <%@include file="/WEB-INF/common/header.jsp"%>
        <div class="row">
             <!--Begin aside bar -->
            <div class="col-md-2" style="background-color: #34495e;">
                <ul class="nav nav-pills flex-column">
                    <li class="nav-item">
                        <a class="nav-link " href="<s:url value="/home"/>"> <s:text name="nar.homepage.title"/></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="<s:url value="/department"/>" ><s:text name="nar.department.title"/></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="<s:url value="/employee"/>" ><s:text name="nar.employee.title"/></a>
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
                    
                    <h1><spring:message code="homepageIndex.department"/> </h1>
                    
                    <h3><spring:message code="label.department.removeSceen"/></h3>
                    <div class="form-group">&nbsp;</div>
            
                    <!-- BEGIN CREATE FORM -->
                    <div>
                        <s:form action="/record/removeProcessDepartment?id=%{id}" enctype="multipart/form-data" theme="bootstrap" cssClass="form-horizontal">
                            <s:hidden name="id" value="%{id}"/>
                            <div class="form-row">
                                <div class="form-group col-md-12">
                                    <s:textfield key="code"
                                                 placeholder="code"
                                                 id="code"
                                                 tooltip="Enter Department Code here" readonly="true"/>
                                </div>
                                <div class="form-group col-md-12">
                                    <s:textfield key="name"
                                                 placeholder="name"
                                                 id="name"
                                                 tooltip="Enter Department Name here" readonly="true"/>
                                </div>
                            </div>
                            <div class="col-sm-10">
                                <button type="submit" class="btn btn-danger"><s:text
                                        name="record.remove.button.remove"/></button>
                                <a href="<s:url value="/record"/>" class="btn btn-secondary"><i
                                        class="fas fa-angle-left"></i>&nbsp;<s:text name="record.remove.button.back"/> </a>
                            </div>
                        </s:form>
                    </div>
                        <!-- END CREATE FORM -->
    
                </div>
            </div>
        </div>
    </section>
	
</body>
</html>