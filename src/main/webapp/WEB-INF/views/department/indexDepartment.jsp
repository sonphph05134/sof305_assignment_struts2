<%--
  Created by IntelliJ IDEA.
  User: hoais
  Date: 7/16/2018
  Time: 7:18 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ include file="/WEB-INF/common/common.jsp"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>
<!DOCTYPE html>
<html>
<head>
    <title>Department</title>
    <%@ include file="/WEB-INF/common/head.jsp"%>
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
                <section id="main-content">
                    <section class="wrapper">
                        <div >&nbsp; </div>
                        <div class="container">
                            <h2><s:text name="departmentIndex.title"/></h2>
                            <div >&nbsp; </div>
                            <h2><s:text name="departmentIndex.title.label"/></h2>
                            <div >&nbsp; </div>
                            <!-- Begin Search screen -->
                            <!-- BEGIN SEARCH FORM -->
                            <div class="form-group">&nbsp;</div>
                            <s:form action="department" enctype="multipart/form-data" theme="bootstrap" cssClass="form-horizontal"
                                    id="searchForm">

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
                                <s:hidden name="pn" value="%{pn}" id="pageNo"/>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <s:textfield key="department.label.CODE" cssClass="form-control" id="code"/>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <s:textfield key="department.label.NAME" cssClass="form-control" id="name"/>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary" id="btnSearch"><i class="fas fa-search"></i><s:text
                                        name="department.search.button"/></button>
                                <%--   <s:submit key="button.search" value="Search" cssClass="btn btn-outline-primary"/>--%>
                                <button type="submit" class="btn btn-warning" id="btnClear"><i class="fas fa-eraser"></i><s:text
                                        name="department.clear.button"/></button>

                            </s:form>

                            <!-- END SEARCH FORM -->

                            <div class="form-group">&nbsp;</div>

                            <!-- Begin List screen -->
                            <div>

                                <div class="row">
                                    <div class="col">
                                        <a href="${pageContext.request.contextPath}/department/createDepartment" class="btn btn-success">
                                            <i class="fas fa-plus-square"></i> <s:text name="department.create.button"/>
                                        </a>
                                    </div>
                                </div>
                                <div class="col">
                                    <jsp:include page="/WEB-INF/common/paging.jsp">
                                        <jsp:param name="paging" value="${paging}" />
                                    </jsp:include>
                                </div>
                                <table class="table table-bordered table-hover">
                                    <thead class="thead-light">
                                    <tr>
                                        <th><s:text name="department.label.No"/></th>
                                        <th><s:text name="department.label.CODE"/></th>
                                        <th><s:text name="department.label.NAME"/></th>
                                        <th align="center"><s:text name="department.label.ACTION"/></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <s:iterator value="departmentDto" status="loop">
                                        <tr>
                                            <td>${loop.count}</td>
                                            <td><s:property value="code"/></td>
                                            <td><s:property value="name"/></td>
                                            <td align="center">
                                                <a href="<s:url value="/department/updateDepartment">
                                                    <s:param name="id" value="%{id}"/>
                                                </s:url> " class="btn btn-outline-success">
                                                    <i class="fas fa-edit"></i>
                                                </a>
                                                <a href="<s:url value="/department/removeDepartment">
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
                                        <div class="col">
                                            <a href="${pageContext.request.contextPath}/department/createDepartment" class="btn btn-success">
                                                <i class="fas fa-plus-square"></i> <s:text name="department.create.button"/>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End List screen -->
                            <div class="col">
                                <jsp:include page="/WEB-INF/common/paging.jsp">
                                    <jsp:param name="paging" value="${paging}" />
                                </jsp:include>
                            </div>
                        </div>
                    </section>
                </section>
            </div>
        </div>
    </section>


</body>
</html>