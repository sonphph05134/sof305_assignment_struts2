<%--
  Created by IntelliJ IDEA.
  User: hoais
  Date: 7/18/2018
  Time: 10:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/WEB-INF/common/common.jsp"%>
<%@page pageEncoding="UTF-8"%>
<html>
<head>
    <title>Record</title>
    <%@ include file="/WEB-INF/common/head.jsp"%>
</head>
<body>
        <section id="container">

            <!-- Begin Header -->
            <%@include file="/WEB-INF/common/header.jsp"%>
            <!-- End Header-->
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
                            <a class="nav-link active " href="<s:url value="/record"/>" ><s:text name="nar.record.title"/></a>
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
                                <div >&nbsp; </div>
                                <h2><s:text name="recordIndex.title.label"/></h2>
                                <div >&nbsp; </div>
                                <!-- BEGIN TOP MESSAGE -->
                                <div class="alert alert-heading alert-dismissible fade show font-weight-bold" role="alert">
                                    <s:if test="hasActionMessages()">
                                        <s:actionmessage theme="bootstrap"/>
                                    </s:if>
                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <!-- END TOP MESSAGE -->
                                <div >&nbsp; </div>
                                <!-- Begin Search screen -->
                                <div>

                                    <s:form action="record" theme="bootstrap" cssClass="form-horizontal" id="searchForm">
                                        <div>
                                            <s:select list="employeeDto" listValue="name" listKey="id" name="employeeId" theme="bootstrap" cssClass="form-control"
                                                      emptyOption="true" headerKey="0" headerValue="-------------------------------------------------     Employee List    ---------------------------------------------------"
                                                      id="employeeId"/>
                                        </div>
                                        <s:hidden name="pn" value="%{pn}" id="pageNo"/>

                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <s:textfield key="record.label.code" cssClass="form-control" id="code"/>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <s:textfield key="record.label.reason" cssClass="form-control" id="name"/>
                                            </div>
                                        </div>

                                        <button type="submit" class="btn btn-primary" id="btnSearch">
                                            <i class=" fas fa-search"></i>
                                            <s:text name="record.search.button"/>
                                        </button>
                                        <button type="submit" class="btn btn-warning" id="btnClear">
                                            <i class="fas fa-eraser"></i>
                                            <s:text name="record.clear.button"/>
                                        </button>
                                    </s:form>
                                </div>
                                <!-- End Search screen -->

                                <div class="form-group">&nbsp;</div>

                                <!-- Begin List screen -->
                                <div>
                                    <div class="row">
                                        <div class="col">
                                            <a href="${pageContext.request.contextPath}/record/createRecord" class="btn btn-success">
                                                <i class="fas fa-plus-square"></i>
                                                <s:text name="record.create.button" />
                                            </a>
                                        </div>
                                    </div>
                                    <table class="table table-bordered table-hover" >
                                        <thead class="thead-light">
                                        <tr>
                                            <th><s:text name="record.label.no"/></th>
                                            <th><s:text name="record.label.code"/></th>
                                            <th><s:text name="record.label.type"/></th>
                                            <th><s:text name="record.label.reason"/></th>
                                            <th><s:text name="record.label.employeeName"/></th>
                                            <th align="center"><s:text name="record.label.action"/></th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                            <s:iterator value="recordDto" status="loop" var="list">
                                                <tr>
                                                    <td>${loop.count}</td>
                                                    <td><s:property value="code"/></td>
                                                    <td><s:property value="type"/></td>
                                                    <td><s:property value="reason"/></td>
                                                    <td><s:property value="employeeName"/></td>
                                                    <td align="center">
                                                        <a href="<s:url value="record/updateRecord">
                                                            <s:param name="id" value="%{id}"/>
                                                        </s:url> " class="btn btn-outline-success">
                                                            <i class="fas fa-edit"></i>
                                                        </a>
                                                        <a href="<s:url value="record/removeRecord">
                                                            <s:param name="id" value="%{id}"/>
                                                        </s:url>" class="btn btn-outline-danger">
                                                            <i class="fas fa-trash-alt"></i>
                                                        </a>
                                                    </td>
                                                </tr>
                                            </s:iterator>
                                        </tbody>
                                    </table>
                                    <div class="row">
                                        <div class="col">
                                            <a href="#" class="btn btn-success">
                                                <i class="fas fa-plus-square"></i>
                                                <s:text name="record.create.button" />
                                            </a>
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
