<%--
  Created by IntelliJ IDEA.
  User: hoais
  Date: 7/16/2018
  Time: 7:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="Content-Script-Type" content="text/javascript" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Statistic</title>
    <link rel="stylesheet" type="text/css" href="assets/bootstrap/css/bootstrap-grid.css">
    <link rel="stylesheet" type="text/css" href="assets/bootstrap/css/bootstrap-reboot.css">
    <link rel="stylesheet" type="text/css" href="assets/bootstrap/css/bootstrap.css">

    <link rel="stylesheet" type="text/css" href="assets/fontawesome/css/fontawesome-all.min.css">

    <script src="assets/jquery/jquery-3.3.1.min.js" ></script>
    <script src="assets/bootstrap/js/bootstrap.js"></script>
</head>
<body>
<section id="container">

    <!-- Begin Header -->
    <div class="header">
        <nav class="navbar navbar-dark bg-dark">

            <!--logo start-->

            <div class="">
                <img src="<s:url value="assets/images/Logo.jpg"/>" width="10%">
                <a href="<s:url value="/"/>" class="logo"><strong style="color: white"> ABC Group</strong></a>
            </div>
            <!--logo end-->
            <div class="top-nav notification-row">
                <div class="nav pull-right" id="top_menu">
                    <!--  Start Button Login/logout -->
                    <div class="row">

                        <div class="dropdown show">
                            <a class="btn btn-info dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                USER_NAME
                            </a>

                            <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                <ul>
                                    <li >
                                        <a href="?lang=en">
                                            <img src="<s:url value="assets/images/UkFlag.png" />" width="15px" height="15px"/>EN

                                        </a>
                                    </li>
                                    <li >
                                        <a href="?lang=vn">
                                            <img src="<s:url value="assets/images/VnFlag.png" />" width="15px" height="15px"/>VI
                                        </a>
                                    </li>
                                </ul>

                                <a class="nav-link" href="<s:url value="web/views/auth/login.jsp"/>">
                                    Logout
                                </a>
                            </div>
                        </div>
                        <!--  End Button Login/logout -->
                    </div>
                </div>

            </div>
        </nav>
    </div>
    <!-- End Header-->
    <div class="row">
        <!--Begin aside bar -->
        <div class="col-md-2" style="background-color: #34495e;">
            <ul class="nav nav-pills flex-column">
                <li class="nav-item">
                    <a class="nav-link " href="<s:url action="homePage"/>" >homepage</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link " href="<s:url action="department"/>" >department</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<s:url action="employee"/>" >employee</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link " href="<s:url action="record"/>" >recording</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="<s:url action="statistic"/>" >statistic</a>
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
