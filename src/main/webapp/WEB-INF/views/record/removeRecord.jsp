<%@page pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <%@include file="/WEB-INF/common/common.jsp"%>
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
                    
                    <h2><s:text name="recordIndex.title"/></h2>

                    <h3><s:text name="recordRemove.title"/></h3>
                    <div class="form-group">&nbsp;</div>
            
                    <!-- BEGIN CREATE FORM -->
                    <div>

						 	<s:form action="/record/removeProcessRecord?id=%{id}" enctype="multipart/form-data" theme="bootstrap" cssClass="form-horizontal">

                                <h6><s:text name="record.title.remove.request" /></h6>

                                <s:hidden name="id" value="%{id}"/>

                                <div class="form-row">
                                    <div class="form-group col-md-12">
                                        <s:textfield name="code"
                                                     key="record.label.code"
                                                     readonly="true"/>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <s:textfield name="reason"
                                                        key="record.label.reason"
                                                     readonly="true"/>
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