<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <title>Assignment </title>
    <script src=""></script>
    <!-- Custom Theme files -->
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Classy Login form Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <!-- //for-mobile-apps -->
    <!--Google Fonts-->
    <link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700' rel='stylesheet' type='text/css'>
</head>
<body>
        <!--header start here-->
        <div class="header">
            <div class="header-main">
                <h1>Login Form</h1>
                <div class="header-bottom">
                    <div class="header-right w3agile">

                        <div class="header-left-bottom agileinfo">

                            <s:form action="login" method="post">
                                <input type="text" value="User name" name="name" />
                                <input type="password" value="Password" name="password"/>
                                <div class="remember">
                                 <span class="checkbox1">
                                       <label class="checkbox"><input type="checkbox" name="" checked=""><i> </i>Remember me</label>
                                 </span>
                                    <div class="forgot">
                                        <h6><a href="#">Forgot Password?</a></h6>
                                    </div>
                                    <div class="clear"></div>
                                </div>

                                <input type="submit" value="Login">
                            </s:form>
                            <div class="header-left-top">
                                <div class="">&nbsp;</div>

                            </div>
                            <div class="header-social wthree">
                                <div class="">&nbsp;</div>
                                <div class="">&nbsp;</div>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!--header end here-->
        <div class="copyright">
            <p> @Design by Phan Hoai Son </a></p>
        </div>
        <!--footer end here-->
</body>
</html>