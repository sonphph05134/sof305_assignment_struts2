<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Begin Header -->
        <div class="header">
            <nav class="navbar navbar-dark bg-dark">

                <!--logo start-->

                <div class="">
                    <a href="<s:url action="homePage"/>" class="logo">
                        <img src="<s:url value="/assets/images/Logo.jpg"/>" width="10%">
                        <strong style="color: white">ABC Group</strong>
                    </a>
                </div>
                <!--logo end-->
                <div class="top-nav notification-row">
                    <div class="nav pull-right" id="top_menu">
                        <!--  Start Button Login/logout -->
                        <div class="row">

                            <div class="dropdown show">
                                <a class="btn btn-info dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <c:out value="${sessionScope.get('userLogin').name}"></c:out>
                                </a>

                                <div class="dropdown-menu" >
                                    <ul>
                                        <li >
                                            <a href="?lang=en">
                                                <img src="<s:url value="/assets/images/UkFlag.png" />" width="15px" height="15px"/>English
                                            </a>
                                        </li>
                                        <li >
                                            <a href="?lang=vn">
                                                <img src="<s:url value="/assets/images/VnFlag.png" />" width="15px" height="15px"/>Vietnamese
                                            </a>
                                        </li>
                                    </ul>

                                    <a class="nav-link" href="${pageContext.request.contextPath}/logout">
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