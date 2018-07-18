<%@page pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/WEB-INF/views/common/head.jsp"%>
</head>
<body>
	<section id="container">
		 <%@include file="/WEB-INF/views/common/navibars.jsp"%>
		<!-- Begin Wrapper-->
		<!--Begin navibar -->
		<div class="row">
			<div class="col-md-2" style="background-color: #34495e;">
				<ul class="nav nav-pills flex-column">
				  <li class="nav-item">
				    <a class="nav-link active" href="<c:url value="/"/>" ><spring:message code="homepageIndex.homepage"/></a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link " href="<c:url value="/department"/>" ><spring:message code="homepageIndex.department"/></a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="<c:url value="/employee"/>" ><spring:message code="homepageIndex.employee"/></a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link " href="<c:url value="/record"/>" ><spring:message code="homepageIndex.recording"/></a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link " href="<c:url value="/statistic"/>" ><spring:message code="homepageIndex.statistic"/></a>
				  </li>
				</ul>
			</div>
			<div class="col-md-10" style="background-color: #ecf0f1;">
				<section id="main-content">
					<section class="wrapper">
					
						<div class="container">
							<div class="">&nbsp;</div>
									<h2><spring:message code="label.homepage.title"/></h2>
                                    <br>
                                    <h2><spring:message code="label.homepage.top.label"/></h2>
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
                                            <th><spring:message code="label.homepage.thead.No"/></th>
                                            <th><spring:message code="label.homepage.thead.Name"/></th>
                                            <th><spring:message code="label.homepage.thead.SumAchievement"/></th>
                                            <th><spring:message code="label.homepage.thead.Photo"/></th>
                                          </tr>
                                        </thead>
                                        <tbody>
                                          <tr>
                                            <td>1</td>
                                            <td>Ngọc Trinh</td>
                                            <td>50</td>
                                            <td> <img src="<c:url value="/assets/images/ngoc-tring.jpg"/>" width="20%"></td>
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