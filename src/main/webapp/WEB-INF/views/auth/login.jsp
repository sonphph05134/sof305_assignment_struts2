<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>


<!DOCTYPE html>
<html>
<head>
    <sb:head/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <title>Assignment </title>
    <!-- Custom Theme files -->
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Classy Login form Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <!-- //for-mobile-apps -->
    <!--Google Fonts-->
    <link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700' rel='stylesheet' type='text/css'>

    <style type="text/css">
        label[for="label"] {
            color: #ffffff;
            font-family:"Font Awesome 5 Free";
            font-size: large;
            font-weight: lighter;
        }
    </style>
</head>
<body >
    <s:actionerror theme="bootstrap"/>
    <%--<s:actionmessage theme="bootstrap"/>--%>
    <s:fielderror theme="bootstrap"/>
        <!--header start here-->
        <div class="header">
            <div class="header-main">
                <h1>Login Form</h1>
                <div class="header-bottom">
                    <div class="header-right w3agile">

                        <div class="header-left-bottom agileinfo">

                            <s:form action="loginProcess"  theme="bootstrap" cssClass="form-horizontal" method="post">
                                <div class="row">
                                    <s:textfield  size="200px" name="model.username" id="username"/>
                                    <s:password   size="200px" name="model.password" id="password"/>
                                </div>

                                <div class="remember">
                                    <span class="checkbox1">
								            <label class="checkbox"><input type="checkbox" name="" checked=""><i> </i>Remember me</label>
                                    </span>
                                    <div class="forgot">
                                        <h6><a href="#">Forgot Password?</a></h6>
                                    </div>
                                    <div class="clear"> </div>
                                </div>
                                <div class="col-md-6 col-md-offset-3">
                                    <s:submit  name ="login" value="Login"  />
                                </div>
                            </s:form>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!--header end here-->
        <div class="clear"> &nbsp;</div>
        <div class="copyright">
            <p style="color: #1d2124"> @Design by Phan Hoai Son </p>
        </div>
        <!--footer end here-->
</body>
</html>