
        <!-- Begin Header -->
        <div class="header">
            <nav class="navbar navbar-dark bg-dark">

                <!--logo start-->

                <div class="">
                    <img src="<s:url value="WEB-INF/assets/images/Logo.jpg"/>" width="10%">
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
                                          <img src="<s:url value="WEB-INF/assets/images/UkFlag.png" />" width="15px" height="15px"/>

                                        </a>
                                       </li>
                            </ul>
                            <ul>
                                    <li class="nav-item ">
                                         <a class="nav-link" href="?lang=en">
                                             <img src="<s:url value="WEB-INF/assets/images/UkFlag.png" />" width="15px" height="15px"/>

                                        </a>
                                    </li>
                            </ul>
                            <ul>
                                    <li class="nav-item ">
                                             <a class="nav-link" href="?lang=vn">
                                                 <img src="<s:url value="WEB-INF/assets/images/VnFlag.png" />" width="15px" height="15px"/>
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