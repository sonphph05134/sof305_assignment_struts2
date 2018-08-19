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
                        <section id="main-content">
                            <section class="wrapper">
                                <div >&nbsp; </div>
                                <div class="container">
                                
                                    <h2><s:text name="recordIndex.title"/></h2>
                                    
                                    <div>&nbsp;</div>
                                    <h2><s:text name="recordUpdate.title"/></h2>
                                    <div>&nbsp;</div>
                                    <!-- Begin Create screen -->
                                    <div>
							            <s:form  action="/record/updateProcessRecord?=%{id}" method="POST" enctype="multipart/form-data" theme="bootstrap" cssClass="form-horizontal">
							              <div class="row offset-1">
                                              <h4><s:text name="record.label.infomation"/> </h4>
                                          </div>
                                            <div>&nbsp;</div>
                                            <s:hidden name="id" value="%{id}"/>
                                            <div class="list-group">
                                                <h6><s:text name="record.dropdown.employee.name"/> </h6>
                                              <div class="row col-md-2">
                                                  <s:select list="listEmployeeDto"  listValue="name" listKey="id" name="employeeId" theme="bootstrap" cssStyle="width: 800px"/>
                                              </div>

                                              <div class="row ">
                                                  <div class="form-group col-md-12">
                                                      <s:textfield name="code" key="record.label.code"/>
                                                  </div>
                                                  <div class="form-group col-md-12">
                                                      <s:textarea name="reason" key="record.label.reason"/>
                                                  </div>
                                              </div>
                                                <div class="col-md-offset-2">
                                                <h6><s:text name="record.radion.type.name"/> </h6>
                                                </div>
                                              <div class="row offset-1">
                                                  <s:set var="listType" value="%{listEmployeeDto.type}"/>
                                                    <s:if test="listType==TT">
                                                        <s:radio list="{'TT'}" name="type"  theme="simple" cssStyle="column-width: 100px"/>
                                                    </s:if>
                                                  <s:if test="listType==KL">
                                                      <s:radio list="{'KL'}" name="type" theme="simple" cssStyle="column-width: 100px"  />
                                                  </s:if>
                                                  <s:if test="listType==TT">
                                                      <s:radio list="{'NONE'}" name="type"  theme="simple" cssStyle="column-width: 100px"/>
                                                  </s:if>

                                                  <%--<s:radio list="{'TT','KL','NONE'}" name="type"  theme="simple" cssStyle="column-width: 100px" />--%>
                                              </div>

                                              <div class="col-sm-10">
                                                  <button type="submit" class="btn btn-warning">
                                                      <s:text name="record.update.button"/>
                                                  </button>
                                                  <a href="<s:url value="/record"/>" class="btn btn-secondary">
                                                      <i class="fas fa-angle-left"></i> &nbsp; <s:text name="record.back.button"/>
                                                  </a>
                                              </div>
                                          </div>
							            </s:form>
							        </div>
							        <!-- End Create screen -->
                                </div>
                            </section>
                        </section>
    				</div>
    	</div>
</section>

</body>
</html>