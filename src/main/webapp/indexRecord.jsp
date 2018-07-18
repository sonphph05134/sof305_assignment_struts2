<%--
  Created by IntelliJ IDEA.
  User: hoais
  Date: 7/18/2018
  Time: 10:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="Content-Script-Type" content="text/javascript" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Record</title>
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
                        <a href="<s:url value="/"/>" class="logo"><strong style="color: white"></strong></a>
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
                            <a class="nav-link active" href="<s:url action="record"/>" >recording</a>
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
                                <h2>recordIndex.title</h2>
                                <div >&nbsp; </div>
                                <h2>recordIndex.title.label</h2>
                                <div >&nbsp; </div>
                                <!-- Begin Top Message -->

                                <!-- End Top Message -->
                                <div >&nbsp; </div>
                                <!-- Begin Search screen -->
                                <div>

                                    <form:form modelAttribute="record" method="GET" action="${(listAction)}" id="searchForm">
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
                                    </form:form>
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
                                    <table class="table table-striped">
                                        <thead>
                                        <tr>
                                            <th>Record.no</th>
                                            <th>Record.code</th>
                                            <th>Record.type</th>
                                            <th>Record.reason</th>
                                            <th>Record.name</th>
                                            <th align="center">Record.action</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <th>1</th>
                                            <th>nv001</th>
                                            <th>TT</th>
                                            <td>Goodlike</td>
                                            <td>Phan Hoài Sơn</td>
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

                            </div>
                        </section>
                    </section>
                </div>
            </div>
        </section>

</body>
</html>
