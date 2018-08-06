<%--
  Created by IntelliJ IDEA.
  User: hoais
  Date: 7/16/2018
  Time: 7:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="WEB-INF/common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <title>Department</title>
    <%@ include file="WEB-INF/common/head.jsp"%>
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
                    <a class="nav-link " href="<s:url action="homePage"/>"> homepage</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="<s:url action="department"/>" >department</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<s:url action="employee"/>" >employee</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link " href="<s:url action="record"/>" >recording</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link " href="<s:url action="statistic"/>" >statistic</a>
                </li>
            </ul>
        </div>
        <!--End aside bar -->
        <div class="col-md-10" style="background-color: #ecf0f1;">
            <section id="main-content">
                <section class="wrapper">
                    <div >&nbsp; </div>
                    <div class="container">
                        <h2>departmentIndex.title</h2>
                        <div >&nbsp; </div>
                        <h2>departmentIndex.title.label</h2>
                        <div >&nbsp; </div>
                        <!-- Begin Top Message -->

                        <!-- End Top Message -->
                        <div >&nbsp; </div>
                        <!-- Begin Search screen -->
                        <div>
                            <div class="row">
                                <div class="form-group col">
                                    <s:form theme="bootstrap" cssClass="well form-search">
                                        <s:textfield
                                                label="Code"
                                                name="name"
                                                helpText="This Textfield has an Help Text."
                                                tooltip="Enter your Name here"/>
                                        <s:textfield
                                                label="Name"
                                                name="name"
                                                helpText="This Textfield has an Help Text."
                                                tooltip="Enter your Name here"/>
                                    </s:form>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary" id="btnSearch">Search
                                <i class="fas fa-search"></i>
                            </button>
                            <button type="reset" class="btn btn-warning" id="btnClear">Clear
                                <i class="fas fa-eraser"></i>
                            </button>
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
                                </div>
                            </div>
                            <div class="col">
                                <jsp:include page="/WEB-INF/common/paging.jsp">
                                    <jsp:param name="paging" value="${paging}" />
                                </jsp:include>
                            </div>
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th>department.no</th>
                                    <th>department.code</th>
                                    <th>department.name</th>
                                    <th align="center">department.action</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <th>1</th>
                                    <th>001</th>
                                    <th>Nhân Sự</th>
                                    <td>
                                        <a href=''>
                                            <i class="far fa-edit"></i>
                                        </a>
                                        &nbsp;
                                        <a href=''>
                                            <i class="far fa-trash-alt"></i>
                                        </a>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
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