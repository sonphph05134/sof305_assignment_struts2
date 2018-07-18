<%--
  Created by IntelliJ IDEA.
  User: hoais
  Date: 7/18/2018
  Time: 4:43 PM
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

    <title>Homepage</title>
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
            <!-- Begin Wrapper-->
            <!--Begin navibar -->
            <div class="row">
                <div class="col-md-2" style="background-color: #34495e;">
                    <ul class="nav nav-pills flex-column">
                        <ul class="nav nav-pills flex-column">
                            <li class="nav-item">
                                <a class="nav-link active" href="<s:url action="homePage"/>" >homepage</a>
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
                                <a class="nav-link " href="<s:url action="statistic"/>" >statistic</a>
                            </li>
                        </ul>
                    </ul>
                </div>
                <div class="col-md-10" style="background-color: #ecf0f1;">
                    <section id="main-content">
                        <section class="wrapper">

                            <div class="container">
                                <div class="">&nbsp;</div>
                                <h2>homepage.title</h2>
                                <br>
                                <h2>homepage.top.label</h2>
                                <div class="">&nbsp;</div>

                                <!-- Begin Top Message -->

                                <!-- End Top Message -->

                                <!-- Begin Search screen -->
                                <div>
                                    <div class=""> &nbsp;</div>

                                    <table class="table table-striped">
                                        <div class=""> &nbsp;</div>
                                        <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Name</th>
                                            <th>SumAchievement</th>
                                            <th>Photo</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>Ngọc Trinh</td>
                                            <td>50</td>
                                            <td> <img src="<s:url value="images/ngoc-tring.jpg"/>" width="20%"></td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    <nav aria-label="Page navigation example">
                                        <ul class="pagination justify-content-end">
                                            <li class="page-item">
                                                <a class="page-link" href="#" aria-label="Previous">
                                                    <span aria-hidden="true">&laquo;</span>
                                                    <span class="sr-only">Previous</span>
                                                </a>
                                            </li>
                                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                                            <li class="page-item">
                                                <a class="page-link" href="#" aria-label="Next">
                                                    <span aria-hidden="true">&raquo;</span>
                                                    <span class="sr-only">Next</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                                <!-- End List screen -->
                            </div>
                        </section>
                    </section>
                </div>
            </div>

            <!-- End navibar -->

            <!-- Begin Sidebar -->

            <!-- End Sidebar -->

            <!-- Begin Content -->
            <div class=container></div>
            <!-- End Content -->

            <!-- Begin footer -->
            <footer> </footer>
            <!-- End footer -->
            <!-- End Wrapper -->
        </section>

</body>
</html>
