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
            <!--End navibar -->
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

                            <!-- End Search screen -->

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