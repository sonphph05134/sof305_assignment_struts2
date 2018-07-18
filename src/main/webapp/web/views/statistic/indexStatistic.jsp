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
                    <a class="nav-link active" href="<c:url value="/statistic"/>"><spring:message code="statisticIndex.statistic"/></a>
                    	<ul class="nav nav-pills flex-column">
						  <li class="nav-item">
						    <a class="nav-link" href="<c:url value="/statistic/departmentStatistic"/>">&nbsp; <spring:message code="statisticIndex.departmentStatistic"/></a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link" href="<c:url value="/statistic/employeeStatistic"/>">&nbsp; <spring:message code="statisticIndex.employeeStatistic"/></a>
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
									<div class=" ">&nbsp;</div>
                                    <h3><spring:message code="statisticIndex.title.label"/></h3>
									<div class=" ">&nbsp;</div>
                                    <!-- Begin Search screen -->
							
							<!-- End Search screen -->
							<div>&nbsp;</div>
							<!-- Begin List screen -->
								<div>
								<div class="row">
									<div class="col">
										<jsp:include page="/WEB-INF/views/common/paging.jsp">
											<jsp:param name="paging" value="${paging}" />
										</jsp:include>
									</div>
								</div>
								<table class="table table-striped">
									<thead>
										<tr>
											<th><spring:message code="statisticIndex.no"/></th>
											<th><spring:message code="statisticIndex.employeeName"/></th>
											<th><spring:message code="statisticIndex.Achievement"/></th>
											<th><spring:message code="statisticIndex.Discipline"/></th>
											<th><spring:message code="statisticIndex.bonusPoint"/></th>
										</tr>
									</thead>
									<tbody>
											<td>1</td>
	                                        <td>J001</td>
	                                        <td>Joe</td>
	                                        <td>50</td>
	                                        <td>5</td>
									</tbody>
								</table>
								<!-- Start Bottom Create and Paging -->
								<div class="row">
									<div class="col">
										<jsp:include page="/WEB-INF/views/common/paging.jsp">
											<jsp:param name="paging" value="${paging}" />
										</jsp:include>
									</div>
								</div>
								<!--End Bottom Create and Paging -->
							</div>
                                    <!-- End List screen -->
                                </div>
                            </section>
                        </section>
                    </div>
     </div>
</body>
</html>