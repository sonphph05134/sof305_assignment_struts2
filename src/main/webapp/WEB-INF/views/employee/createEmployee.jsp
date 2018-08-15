<%@page pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <%@include file="/WEB-INF/common/head.jsp"%>
	<script type="text/javascript">
	$(document).ready( function() {
		$(document).on('change', '.btn-file :file', function() {
		var input = $(this),
			label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
		input.trigger('fileselect', [label]);
		});

		$('.btn-file :file').on('fileselect', function(event, label) {

			var input = $(this).parents('.input-group').find(':text'),
				log = label;

			if( input.length ) {
				input.val(log);
			} else {
				if( log ) alert(log);
			}

		});
		function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();

				reader.onload = function (e) {
					$('#img-upload').attr('src', e.target.result);
				}

				reader.readAsDataURL(input.files[0]);
			}
		}

		$("#imgInp").change(function(){
			readURL(this);
		});
	});
	</script>
	<style type="text/css">
		.btn-file {
			position: relative;
			overflow: hidden;
		}
		.btn-file input[type=file] {
			position: absolute;
			top: 0;
			right: 0;
			min-width: 100%;
			min-height: 100%;
			font-size: 100px;
			text-align: right;	    filter: alpha(opacity=0);
			opacity: 0;
			outline: none;
			background: white;
			cursor: inherit;
			display: block;
		}

		#img-upload{
			width: 100%;
		}
	</style>

</head>
<body>
    <%@include file="/WEB-INF/common/header.jsp"%>

    <section id="container">
    
        <div class="row">
                    <!--Begin aside bar -->
			<div class="col-md-2" style="background-color: #34495e;">
				<ul class="nav nav-pills flex-column">
					<li class="nav-item">
						<a class="nav-link " href="<s:url value="/home"/>"> <s:text name="nar.homepage.title"/></a>
					</li>
					<li class="nav-item">
						<a class="nav-link " href="<s:url value="/department"/>" ><s:text name="nar.department.title"/></a>
					</li>
					<li class="nav-item">
						<a class="nav-link active" href="<s:url value="/employee"/>" ><s:text name="nar.employee.title"/></a>
					</li>
					<li class="nav-item">
						<a class="nav-link  " href="<s:url value="/record"/>" ><s:text name="nar.record.title"/></a>
					</li>
					<li class="nav-item">
						<a class="nav-link " href="<s:url value="/statistic"/>" ><s:text name="nar.statistic.title"/></a>
					</li>
				</ul>
			</div>
                <!--End aside bar -->
                    <div class="col-md-10" style="background-color: #ecf0f1;">
                        <section id="main-content">
                            <section class="wrapper">
                                <div >&nbsp; </div>
                                <div class="container">
                                    <h2><s:text name="employeeIndex.create.title"/></h2>
                                    <div>&nbsp;</div>
									<!-- Begin Create screen -->
                                    <div>
										<s:form action="/employee/createEmployeeProcess"  enctype="multipart/form-data" theme="bootstrap" cssClass="form-horizontal mt-4">
	                                        <div class="row">
	                                            <div class="col">
                                                    <%--<div>--%>
                                                        <%--<s:select list="departmentDto" listValue="name" listKey="id" name="departmentId" theme="bootstrap" cssClass="form-control"--%>
                                                                  <%--emptyOption="true" headerKey="0" headerValue="-----------------------------------------     Department List    -----------------------------------------------"--%>
                                                                  <%--id="departmentId"/>--%>
                                                    <%--</div>--%>

	                                                <div class="form-group">

														<s:textfield key="code"
																	 placeholder="code"
																	 id="code"
																	 tooltip="Enter Employee Code here"/>
	                                                </div>

	                                                <div class="form-group">

														<s:textfield key="code"
																	 placeholder="code"
																	 id="code"
																	 tooltip="Enter Employee name here"/>
	                                                </div>

	                                                <div class="form-group">
	                                                    <label for="name"><strong><s:text name="label.employee.gender"/>: </strong></label>
	                                                    <div>
	                                                        <%--<div class="form-check form-check-inline">--%>
	                                                            <%--<form:radiobutton path="gender" id="genderMale" value="MALE" cssStyle="form-check-input" cssErrorClass="form-check-input is-invalid"/>--%>
	                                                            <%--&nbsp;<label class="form-check-label" for="genderMale"><spring:message code="label.employee.gender.male"/></label>--%>
	                                                        <%--</div>--%>
	                                                        <%--<div class="form-check form-check-inline">--%>
	                                                            <%--<form:radiobutton path="gender" id="genderFemale" value="FEMALE" cssStyle="form-check-input" cssErrorClass="form-check-input is-invalid"/>--%>
	                                                            <%--&nbsp;<label class="form-check-label" for="genderFemale"><spring:message code="label.employee.gender.female"/></label>--%>
	                                                        <%--</div>--%>
	                                                        <%--<div class="form-check form-check-inline">--%>
	                                                            <%--<form:radiobutton path="gender" id="genderUnknow" value="UNDEFINED" cssStyle="form-check-input" cssErrorClass="form-check-input is-invalid"/>--%>
	                                                            <%--&nbsp;<label class="form-check-label" for="genderUnknow"><spring:message code="label.employee.gender.unknown"/></label>--%>
	                                                        <%--</div>--%>
	                                                    </div>

	                                                </div>

	                                                <div class="form-group">
	                                                    <label for="birthday"><strong><s:text name="label.employee.birthday"/>: </strong></label>
	                                                    <%--<form:input path="birthday" cssClass="form-control" cssErrorClass="form-control is-invalid"/>--%>
	                                                    <%--<div class="invalid-feedback"><form:errors path="birthday"/></div>--%>
	                                                </div>

	                                                <div class="form-group">

														<s:textfield key="name"
																	 placeholder="name"
																	 id="name"
																	 tooltip="Enter email here"/>
	                                                </div>

	                                                <div class="form-group">

														<s:textfield key="name"
																	 placeholder="name"
																	 id="name"
																	 tooltip="Enter phone here"/>
	                                                </div>

	                                                <div class="form-group">

															<s:textfield key="name"
																		 placeholder="name"
																		 id="name"
																		 tooltip="Enter Employee salary here"/>

	                                                </div>

	                                            </div>
	                                            <div class="col">
	                                                <div class="form-group">

	                                                    <div class="input-group">
	                                                        <span class="btn btn-secondary btn-file"> Browse… <input type="file" name="file" id="imgInp"></span>
	                                                        <form:input path="photo" cssClass="form-control" cssErrorClass="form-control is-invalid" readonly="true"/>
	                                                    </div>
	                                                    <img id='img-upload' />
	                                                </div>
	                                            </div>
	                                        </div>

	                                        <div class="row">
	                                            <div class="form-group col">
	                                                <s:textarea key="description"
																placeholder="Description"
																id="description"
																tooltip="Enter notes here"/>
	                                            </div>
	                                        </div>

	                                        <div class="row">
	                                            <div class="form-group col">
													<button type="submit" class="btn btn-primary"><s:text
															name="employee.create.button.create"/></button>
													<a href="<s:url value="/employee"/>" class="btn btn-secondary"><i
															class="fas fa-angle-left"></i>&nbsp;<s:text name="employee.create.button.back"/> </a>
	                                            </div>
	                                        </div>

                                        </s:form>
                                    </div>
                            <!-- End Create screen -->
                                </div>
                            </section>
                        </section>
                	</div>
        </div>
    </section>
</body>
</html>

	                            
	 