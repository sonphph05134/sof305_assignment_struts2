<%@page pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/WEB-INF/views/common/head.jsp"%>
</head>
<body>
    <%@include file="/WEB-INF/views/common/navibars.jsp"%>
    <div class="row">
            <!--Begin aside bar -->
           <div class="col-md-2" style="background-color: #34495e;">
                <ul class="nav nav-pills flex-column">
                  <li class="nav-item">
				    <a class="nav-link " href="<c:url value="/"/>" ><spring:message code="statisticIndex.homepage"/></a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link " href="<c:url value="/department"/>" ><spring:message code="statisticIndex.department"/></a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="<c:url value="/employee"/>" ><spring:message code="statisticIndex.employee"/></a>
				  </li>
				  <li class="nav-item ">
				    <a class="nav-link " href="<c:url value="/record"/>" ><spring:message code="statisticIndex.recording"/></a>
				  </li>
                  <li class="nav-item">
                    <a class="nav-link " href="<c:url value="/statistic"/>"><spring:message code="statisticIndex.statistic"/></a>
                    	<ul class="nav nav-pills flex-column">
						  <li class="nav-item ">
						    <a class="nav-link active" href="<c:url value="/statistic/departmentStatistic"/>">&nbsp; <spring:message code="statistic.department.label"/></a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link" href="<c:url value="/statistic/employeeStatistic"/>">&nbsp; <spring:message code="statistic.employee.label"/></a>
						  </li>
						</ul>
                  </li>
                </ul>
            </div>
        <!--End aside bar -->
        <div class="col-md-10" style="background-color: #ecf0f1;">
                        <section id="main-content">
                            <section class="wrapper">
                                <div >&nbsp; </div>
                                <div class="container">
                                    <h2><spring:message code="statisticIndex.title"/></h2>
                                    <br>
                                    <h3><spring:message code="departmentStatisticIndex.departmentStatistic"/></h3>
                           			<br>
                                    <!-- Begin Top Message -->
                                    <div>
                                        <div class="row">
                                            <div class="float-left">
                                                <a class="btn btn-success" href='<spring:url value="/statistic/employeeStatistic"></spring:url>'>
                                                    <i class="fas fa-chalkboard-teacher"></i> <spring:message code="statistic.employee.label"/>
                                                </a>
                                            </div>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <div class="float-right">
                                                <a  class="btn btn-warning" href='<spring:url value="/statistic"></spring:url>'>
                                                    <i class="fas fa-chevron-left"></i> <spring:message code="statistic.button.back"/>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- End Top Message -->
                            
                                    <!-- Begin Search screen -->
                                    <div>
										<br>

                                        <table class="table table-striped">
                                        <thead>
                                          <tr>
                                            <th><spring:message code="statisticIndex.no"/></th>
											<th><spring:message code="statisticIndex.department"/></th>
											<th><spring:message code="statisticIndex.Achievement"/></th>
											<th><spring:message code="statisticIndex.Discipline"/></th>
											<th><spring:message code="statisticIndex.bonusPoint"/></th>
                                          </tr>
                                        </thead>
                                        <tbody>
                                          <td>1</td>
	                                            <td>Hành Chính</td>
	                                            <td>260</td>
	                                            <td>44</td>
	                                            <td>212</td>
	                                          </tr>
	                                          <tr>
	                                            <td>2</td>
	                                            <td>Nhân Sự</td>
	                                            <td>240</td>
	                                            <td>34</td>
	                                            <td>206</td>
	                                          <tr>
	                                            <td>3</td>
	                                            <td>Kế Toán</td>
	                                            <td>200</td>
	                                            <td>15</td>
	                                            <td>185</td>
	                                          </tr>
	                                          <tr>
	                                            <td>4</td>
	                                            <td>Kinh Doanh</td>
	                                            <td>246</td>
	                                            <td>24</td>
	                                            <td>222</td>
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
</body>
</html>