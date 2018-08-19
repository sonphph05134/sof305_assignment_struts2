<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: hoais
  Date: 7/18/2018
  Time: 10:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/WEB-INF/common/common.jsp"%>
<%@page pageEncoding="UTF-8"%>
<html>
<head>
    <title>Employee</title>
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
                <section id="main-content">
                    <section class="wrapper">
                        <div >&nbsp; </div>
                        <div class="container">
                            <h2><s:text name="employeeIndex.title"/> </h2>
                            <div >&nbsp; </div>
                            <h2><s:text name="employeeIndex.title.label"/></h2>
                            <div >&nbsp; </div>
                            <!-- Begin Top Message -->

                            <!-- End Top Message -->
                            <div >&nbsp; </div>
                            <!-- Begin Search screen -->
                            <%--<s:actionerror theme="bootstrap"/>--%>
                            <%--<s:actionmessage theme="bootstrap"/>--%>
                            <%--<s:fielderror theme="bootstrap"/>--%>
                            <div>
                                    <div class="row">
                                        <div class="form-group col">
                                            <s:form action="employee" enctype="multipart/form-data" theme="bootstrap" cssClass="form-horizontal" id="searchForm">
                                                <div>
                                                    <s:select list="departmentDto" listValue="name" listKey="id" name="departmentId" theme="bootstrap" cssClass="form-control"
                                                    emptyOption="true" headerKey="-1" headerValue="-------------------------------------------------     Department List    ---------------------------------------------------"
                                                    id="departmentId"/>
                                                </div>
                                                <s:hidden name="pn" value="%{pn}" id="pageNo"/>
                                                <div class="form-group">
                                                    <div class="form-group col-md-6">
                                                        <s:textfield key="employee.label.search.code" cssClass="form-row" id="code" cssStyle="width: 800px"/>
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <s:textfield key="employee.label.search.name" cssClass="form-group" id="name" cssStyle="width: 800px"/>
                                                    </div>
                                                </div>
                                                <button type="submit" class="btn btn-primary" id="btnSearch">
                                                    <i class="fas fa-search"></i>
                                                    <s:text name="employee.search.button"/>
                                                </button>
                                                <%--   <s:submit key="button.search" value="Search" cssClass="btn btn-outline-primary"/>--%>
                                                <button type="submit" class="btn btn-warning" id="btnClear">
                                                    <i class="fas fa-eraser"></i>
                                                    <s:text name="employee.clear.button"/>
                                                </button>
                                            </s:form>
                                        </div>

                                    </div>
                            </div>
                            <!-- End Search screen -->

                            <div>&nbsp;</div>

                            <!-- Begin List screen -->
                            <div>
                                <div class="row">
                                    <div class="col">
                                        <a href="${pageContext.request.contextPath}/employee/createEmployee" class="btn btn-success">
                                            <i class="fas fa-plus-square"></i>
                                            <s:text name="employee.create.button"/>
                                        </a>
                                    </div>
                                </div>
                                <div>&nbsp;</div>
                                <table class="table table-bordered table-hover" >
                                    <thead class="thead-light">
                                    <tr>
                                        <th><s:text name="employee.title.No"/></th>
                                        <th><s:text name="employee.title.CODE"/></th>
                                        <th><s:text name="employee.title.NAME"/></th>
                                        <th><s:text name="employee.title.IMAGE"/></th>
                                        <th><s:text name="employee.title.DEPARTMENTNAME"/></th>
                                        <th><s:text name="employee.title.GENDER"/></th>
                                        <th width="150px" ><s:text name="employee.title.BIRTHDAY" /></th>
                                        <th align="center"><s:text name="employee.title.SALARY"/></th>
                                        <th align="center"><s:text name="employee.title.ACTION"/></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                        <%--<c:if test="${fn:length(listEmployees) > 0}">--%>
                                            <%--<c:forEach items="${listEmployees}" var="employee" varStatus="loop">--%>
                                    <s:iterator value="employeeDto" status="loop" var="list">
                                        <tr>
                                            <td>${loop.count}</td>
                                            <td><s:property value="code"/></td>
                                            <td><s:property value="name"/></td>
                                            <td align="center" style="width: 200px">
                                                    <%--FIXME--%>
                                                <s:if test="photo != null">
                                                    <img src="${pageContext.request.contextPath}/uploads/<s:property value="photo"/>" width="30%"/>
                                                </s:if>
                                                <s:else >
                                                    <img src="/uploads/default-user-image.jpg" width="20%"/>
                                                </s:else>

                                            </td>
                                            <td><s:property value="departmentName"/></td>
                                            <td><s:property value="gender"/></td>
                                            <td><s:property value="birthday"/></td>
                                            <td><s:property value="salary"/></td>
                                            <td align="center"style="width: 200px" >
                                                <a href="<s:url value="employee/update">
                                                    <s:param name="id" value="%{id}"/>
                                                </s:url> " class="btn btn-outline-success">
                                                    <i class="fas fa-edit"></i>
                                                </a>
                                                <a href="<s:url value="employee/remove">
                                                    <s:param name="id" value="%{id}"/>
                                                </s:url>" class="btn btn-outline-danger">
                                                    <i class="fas fa-trash-alt"></i>
                                                </a>
                                            </td>
                                        </tr>
                                    </s:iterator>

                                    </tbody>
                                </table>
                                <div class="col">
                                    <div class="pull-right">
                                        <%@include file="/WEB-INF/common/paging.jsp" %>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <a href="${pageContext.request.contextPath}/employee/createEmployee" class="btn btn-success">
                                            <i class="fas fa-plus-square"></i>
                                            <s:text name="employee.create.button"/>
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
