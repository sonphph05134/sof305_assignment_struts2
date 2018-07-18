
<!DOCTYPE html>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Basic Struts 2 Application - Welcome</title>

    <%@page pageEncoding="UTF-8"%>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="Content-Script-Type" content="text/javascript" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Assignment</title>
    <link rel="stylesheet" type="text/css" href="assets/bootstrap/css/bootstrap-grid.css">
    <link rel="stylesheet" type="text/css" href="assets/bootstrap/css/bootstrap-reboot.css">
    <link rel="stylesheet" type="text/css" href="assets/bootstrap/css/bootstrap.css">

    <link rel="stylesheet" type="text/css" href="assets/fontawesome/css/fontawesome-all.min.css">

    <script src="assets/jquery/jquery-3.3.1.min.js" ></script>
    <script src="assets/bootstrap/js/bootstrap.js"></script>
</head>
<body>
    <section id="container">

        <div class="header">
            <nav class="navbar navbar-dark bg-dark">

                <!--logo start-->

                <div class="">
                    <img src="<s:url value="images/Logo.jpg"/>" width="10%">
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
                                        <li class="nav-item ">
                                            <a class="nav-link" href="?lang=en">
                                                <img src="<s:url value="images/UkFlag.png" />" width="15px" height="15px"/>

                                            </a>
                                        </li>
                                    </ul>
                                    <ul>
                                        <li class="nav-item ">
                                            <a class="nav-link" href="?lang=vn">
                                                <img src="<s:url value="images/VnFlag.png" />" width="15px" height="15px"/>
                                            </a>
                                        </li>
                                    </ul>

                                    <a class="nav-link" href="<s:url value="web/views/auth/login.jsp"/>"></a>
                                </div>
                            </div>
                            <!--  End Button Login/logout -->
                        </div>
                    </div>

                </div>
            </nav>
        </div>
        <!-- End Header-->
        <h1>Welcome To Struts 2!</h1>

        <h2>Login Page</h2>
        <p><a href="<s:url action="login"/>">Login</a></p>
        <p><a href="<s:url action="homePage"/>">Home</a></p>
        <p><a href="<s:url action="department"/>">Department</a></p>
        <p><a href="<s:url action="employee"/>">employee</a></p>
        <p><a href="<s:url action="record"/>">record</a></p>
        <p><a href="<s:url action="statistic"/>">statistic</a></p>
    </section>

</body>
</html>