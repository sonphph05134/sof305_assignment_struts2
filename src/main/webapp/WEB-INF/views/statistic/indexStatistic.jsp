<%--
  Created by IntelliJ IDEA.
  User: hoais
  Date: 7/16/2018
  Time: 7:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/WEB-INF/common/common.jsp"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Statistic</title>
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
                    <a class="nav-link  " href="<s:url value="/record"/>" ><s:text name="nar.record.title"/></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="<s:url value="/statistic"/>" ><s:text name="nar.statistic.title"/></a>
                </li>
            </ul>
        </div>
        <!--End aside bar -->
        <div class="col-md-10" style="background-color: #ecf0f1;">
            <section id="main-content">
                <section class="wrapper">
                    <div >&nbsp; </div>
                    <div class="container">
                        <h2>statisticIndex.title</h2>
                        <div >&nbsp; </div>
                        <h2>statisticIndex.title.label</h2>
                        <div >&nbsp; </div>
                        <!-- Begin Top Message -->

                        <!-- End Top Message -->
                        <div >&nbsp; </div>
                        <!-- Begin Search screen -->
                        <div class="row">
                            <div class="float-left">
                                <a class="btn btn-success" href='#'>
                                    <i class="fas fa-chalkboard-teacher"></i> Statistic of Employee
                                </a>
                            </div>
                            <div>&nbsp;</div>
                        </div>
                        <!-- End Search screen -->

                        <div class="form-group">&nbsp;</div>

                        <!-- Begin List screen -->
                        <div>

                             <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th>statistic.no</th>
                                    <th>statistic.employeeName</th>
                                    <th>statistic.Achievement</th>
                                    <th>statistic.Discipline</th>
                                    <th>statistic.bonusPoint</th>
                                </tr>
                                </thead>
                                <tbody>
                                <td>1</td>
                                <td>J001</td>
                                <td>Joe</td>
                                <td>50</td>
                                <td>5</td>
                                </tbody>
                            </table>
                        </div>
                        <div class="row">
                            <div class="float-left">
                                <a class="btn btn-primary" href='#'>
                                    <i class="fas fa-chalkboard-teacher"></i> Statistic of Department
                                </a>
                            </div>
                        </div>
                        <div>

                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th>statistic.no</th>
                                    <th>statistic.departmentName</th>
                                    <th>statistic.Achievement</th>
                                    <th>statistic.Discipline</th>
                                    <th>statistic.bonusPoint</th>
                                </tr>
                                </thead>
                                <tbody>
                                <td>1</td>
                                <td>J001</td>
                                <td>Joe</td>
                                <td>50</td>
                                <td>5</td>
                                </tbody>
                            </table>
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
