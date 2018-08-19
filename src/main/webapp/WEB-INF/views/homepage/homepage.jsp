<%@include file="/WEB-INF/common/common.jsp"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/WEB-INF/common/head.jsp"%>
</head>
<body>
	<section id="container">
        <!--Begin header -->
		 <%@include file="/WEB-INF/common/header.jsp"%>
        <!--End header -->

        <div class="row">
            <!--Begin navibar -->
            <div class="col-md-2" style="background-color: #34495e;">
                    <ul class="nav nav-pills flex-column">
                        <li class="nav-item">
                            <a class="nav-link active" href="<s:url value="/home"/>"> <s:text name="nar.homepage.title"/></a>
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
                            <a class="nav-link " href="<s:url value="/statistic"/>" ><s:text name="nar.statistic.title"/></a>
                        </li>
                    </ul>
            </div>
            <!--End navibar -->
            <div class="col-md-10" style="background-color: #ecf0f1;">
                <section id="main-content">
                    <section class="wrapper">

                        <div class="container">
                            <div class="">&nbsp;</div>
                            <h2><s:text name="homepage.title"/></h2>
                            <br>
                            <h2><s:text name="homepage.top.label"/></h2>
                            <div class="">&nbsp;</div>

                            <!-- Begin List screen -->
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
                                        <td> <img src="<s:url value="/images/ngoc-tring.jpg"/>" width="20%"></td>
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
    </section>


</body>
</html>