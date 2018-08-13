<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Begin Header -->
        <div class="header">
            <nav class="navbar navbar-dark bg-dark">

                <!--logo start-->

                <div class="">
                    <a href="<s:url value="/home"/>" class="logo">
                        <img src="<s:url value="/assets/images/Logo.jpg"/>" width="10%">
                        <strong style="color: white"><s:text name="header.corporation.name"/></strong>
                    </a>
                </div>
                <!--logo end-->
                <div class="top-nav notification-row">
                    <div class="nav pull-right" id="top_menu">
                        <!--  Start Button Login/logout -->
                        <div class="row">
                            <h3 style="color: white;"> <s:text name="header.welcome.title"/> &nbsp;</h3>
                            <div class="dropdown show">
                                <a class="btn btn-info dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <c:out value="${sessionScope.get('userLogin').name}"></c:out>
                                </a>

                                <div class="dropdown-menu" >
                                    <ul>
                                        <li >
                                            <a href="?request_locale=en">
                                                <img src="<s:url value="/assets/images/UkFlag.png" />" width="15px" height="15px"/><span> <s:text name="login.language.en" /></span>
                                            </a>
                                        </li>
                                        <li >
                                            <a href="?request_locale=vn">
                                                <img src="<s:url value="/assets/images/VnFlag.png" />" width="15px" height="15px"/> <span><s:text name="login.language.vi"/></span>
                                            </a>
                                        </li>
                                    </ul>

                                    <a class="nav-link" href="${pageContext.request.contextPath}/logout">
                                        <s:text name="header.logout.label"/>
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