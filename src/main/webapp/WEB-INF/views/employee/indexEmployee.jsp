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
                        <a class="nav-link " href="<s:url value="/home"/>"> homepage</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="<s:url value="/department"/>" >department</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="<s:url value="/employee"/>" >employee</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="<s:url value="/record"/>" >recording</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="<s:url value="/statistic"/>" >statistic</a>
                    </li>
                </ul>
            </div>
            <!--End aside bar -->
            <div class="col-md-10" style="background-color: #ecf0f1;">
                <section id="main-content">
                    <section class="wrapper">
                        <div >&nbsp; </div>
                        <div class="container">
                            <h2>employeeIndex.title</h2>
                            <div >&nbsp; </div>
                            <h2>employeeIndex.title.label</h2>
                            <div >&nbsp; </div>
                            <!-- Begin Top Message -->

                            <!-- End Top Message -->
                            <div >&nbsp; </div>
                            <!-- Begin Search screen -->

                            <div>
                                    <div class="row">
                                        <div class="form-group col">
                                            <s:form action="employee" enctype="multipart/form-data" theme="bootstrap" cssClass="form-horizontal" id="searchForm">
                                                <div class="alert alert-heading alert-dismissible fade show font-weight-bold" role="alert">
                                                    <s:if test="hasActionMessages()">
                                                        <s:actionmessage theme="bootstrap"/>
                                                    </s:if>
                                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>

                                                <s:hidden name="pn" value="%{pn}" id="pageNo"/>
                                                <div class="form-row">
                                                    <div class="form-group col-md-6">
                                                        <s:textfield key="code" cssClass="form-control" id="code"/>
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <s:textfield key="name" cssClass="form-control" id="name"/>
                                                    </div>
                                                </div>
                                                <button type="submit" class="btn btn-primary" id="btnSearch"><i class="fas fa-search"></i><s:text
                                                        name="department.list.search.button.search"/></button>
                                                <%--   <s:submit key="button.search" value="Search" cssClass="btn btn-outline-primary"/>--%>
                                                <button type="submit" class="btn btn-warning" id="btnClear"><i class="fas fa-eraser"></i><s:text
                                                        name="department.list.search.button.clear"/></button>
                                            </s:form>
                                        </div>

                                    </div>
                            </div>
                            <!-- End Search screen -->

                            <div class="form-group">&nbsp;</div>

                            <!-- Begin List screen -->
                            <div>
                                <div class="row">
                                    <div class="col">
                                        <a href="#" class="btn btn-success">
                                            <i class="fas fa-plus-square"></i>
                                            Create
                                        </a>
                                    </div>>
                                </div>
                                <table class="table table-bordered table-hover">
                                    <thead class="thead-light">
                                    <tr>
                                        <th><s:text name="no"/></th>
                                        <th><s:text name="code"/></th>
                                        <th><s:text name="name"/></th>
                                        <th><s:text name="gender"/></th>
                                        <th><s:text name="departmentName"/></th>
                                        <th><s:text name="photo"/></th>
                                        <th align="center"><s:text name="action"/></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <s:iterator value="employeeDto" status="loop">
                                        <tr>
                                            <td>${loop.count}</td>
                                            <td><s:property value="code"/></td>
                                            <td><s:property value="name"/></td>
                                            <td><s:property value="gender"/></td>
                                            <td><s:property value="departmentName"/></td>
                                            <td align="center">
                                                    <%--FIXME--%>
                                                    <%--<c:if test="${not empty employeeDtos.photo}">
                                                        <img alt="${employeeDtos.code}" src="${pageContext.request.contextPath}/uploads/${employeeDtos.photo}" width="100px"/>
                                                    </c:if>
                                                    <c:if test="${empty employeeDtos.photo}">
                                                        <img alt="${employeeDtos.code}" src="<spring:url value="/upload/default-user-image.png"/>" width="100px"/>
                                                    </c:if>--%>
                                            </td>
                                            <td align="center">
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
                                        <a href="#" class="btn btn-success">
                                            <i class="fas fa-plus-square"></i>
                                            Create
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
