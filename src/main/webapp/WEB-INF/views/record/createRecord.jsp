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
			    text-align: right;
			    filter: alpha(opacity=0);
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
	<section id="container">
		<%@include file="/WEB-INF/common/header.jsp"%>
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
									<a class="nav-link " href="<s:url value="/employee"/>" ><s:text name="nar.employee.title"/></a>
								</li>
								<li class="nav-item">
									<a class="nav-link  active" href="<s:url value="/record"/>" ><s:text name="nar.record.title"/></a>
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
	                                
	                                    <h2><s:text name="recordIndex.title"/></h2>
	                                    
	                                    <div>&nbsp;</div>
	                                    <h2><s:text name="recordCreate.title"/></h2>
	                                    
	                                    <!-- Begin Create screen -->
	                                    <div>
											<s:form action="/record/createRecordProcess" enctype="multipart/form-data" theme="bootstrap" cssClass="form-horizontal mt-4">
											<div class="row">
	                                            <div class="col">
	                                                <div class="form-group">
	                                                	<div class="form-group">
															<h6><s:text name="record.dropdown.employee.name"/> </h6>
															<div>
															<s:select list="listEmployeeDto" listValue="name" listKey="id" name="employeeId" theme="bootstrap" cssClass="form-control"
																	  emptyOption="true" headerKey="-1" headerValue="-------------------------------------------------     Employee List    ---------------------------------------------------"
																	 />
														</div>
	                                                </div>
														<div class="row ">
															<div class="form-group col-md-12">
																<s:textfield name="code" key="record.label.code"/>
															</div>
															<div class="form-group col-md-12">
																<s:textarea name="reason" key="record.label.reason"/>
															</div>
														</div>
														<div class="col-md-offset-2">
															<h6><s:text name="record.radion.type.name"/> </h6>
														</div>
														<div class="row offset-1">
															<s:set var="listType" value="%{listEmployeeDto.type}"/>
															<s:if test="listType==TT">
																<s:radio list="{'TT'}" name="type"  theme="simple" cssStyle="column-width: 100px"/>
															</s:if>
															<s:if test="listType==KL">
																<s:radio list="{'KL'}" name="type" theme="simple" cssStyle="column-width: 100px"  />
															</s:if>
															<s:if test="listType==TT">
																<s:radio list="{'NONE'}" name="type"  theme="simple" cssStyle="column-width: 100px"/>
															</s:if>

																<%--<s:radio list="{'TT','KL','NONE'}" name="type"  theme="simple" cssStyle="column-width: 100px" />--%>
														</div>
                                                        <%--<s:radio label="Type of Statistic " list="{'TT','KL','NONE'}" name="type"  theme="bootstrap" cssClass="form-horizontal mt-4"/>--%>
														<%--<div class="form-row">--%>
															<%--<div class="form-group col-md-12">--%>
																<%--<s:textfield key="code"--%>
																			 <%--placeholder="code"--%>
																			 <%--id="code"--%>
																			 <%--tooltip="Enter Record Code here"/>--%>
															<%--</div>--%>

															<%--<div class="form-group col-md-12">--%>
																<%--<s:textarea key="reason"--%>
																			 <%--placeholder="reason"--%>
																			 <%--id="name"--%>
																			 <%--tooltip="Enter Record reason here"/>--%>
															<%--</div>--%>

	                                                <%--<div class="form-group">--%>
														<%--&lt;%&ndash;<s:checkbox name="checkMe" fieldValue="true" value="true" label="Check Me for testing"/>&ndash;%&gt;--%>


													 <%--</div>--%>
															<div class="col-sm-10">
																<button type="submit" class="btn btn-primary"><s:text
																		name="record.create.button"/></button>
																<a href="<s:url value="/record"/>" class="btn btn-secondary"><i
																		class="fas fa-angle-left"></i>&nbsp;<s:text name="record.back.button"/> </a>
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