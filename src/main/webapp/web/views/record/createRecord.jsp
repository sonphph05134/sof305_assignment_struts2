<%@page pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<%@include file="/WEB-INF/views/common/head.jsp"%>
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
		<%@include file="/WEB-INF/views/common/navibars.jsp"%>
	        <div class="row">
	                    <!--Begin aside bar -->
	                    <div class="col-md-2" style="background-color: #34495e;">
	                        <ul class="nav nav-pills flex-column">
	                          <li class="nav-item">
	                            <a class="nav-link " href="<c:url value="/"/>"><spring:message code="recordIndex.homepage"/></a>
	                          </li>
	                          <li class="nav-item">
	                            <a class="nav-link " href="<c:url value="/department"/>"><spring:message code="recordIndex.department"/></a>
	                          </li>
	                          <li class="nav-item">
	                            <a class="nav-link " href="<c:url value="/employee"/>"><spring:message code="recordIndex.employee"/></a>
	                          </li>
	                          <li class="nav-item">
	                            <a class="nav-link active" href="<c:url value="/record"/>"><spring:message code="recordIndex.recording"/></a>
	                          </li>
	                          <li class="nav-item">
	                            <a class="nav-link " href="<c:url value="/statistic"/>"><spring:message code="recordIndex.statistic"/></a>
	                          </li>
	                        </ul>
	                    </div>
	                	<!--End aside bar -->
	                	<div class="col-md-10" style="background-color: #ecf0f1;">
	                        <section id="main-content">
	                            <section class="wrapper">
	                                <div >&nbsp; </div>
	                                <div class="container">
	                                
	                                    <h2><spring:message code="recordIndex.title"/></h2> 
	                                    
	                                    <div>&nbsp;</div>
	                                    <h2><spring:message code="recordCreate.title"/></h2>
	                                    
	                                    <!-- Begin Create screen -->
	                                    <div>
								            <form action='<spring:url value="/record/createRecord"></spring:url>' value="createAction"></form>
								            <form:form action="${createAction}" method="post" modelAttribute="recordCreateForm">
								              <div class="row">
	                                            <div class="col">
	                                                <div class="form-group">
	                                                	<div class="form-group">
	                                                    <label for="employeeId"><strong><spring:message code="recordIndex.employee.label"/>: </strong></label>
	                                                    <form:select path="employeeId" cssClass="form-control" cssErrorClass="form-control is-invalid">
	                                                        <form:option value="">----- <spring:message code="recordIndex.select.employee.label"/> -----</form:option>
	                                                        <form:options items="${employees}" itemValue="id" itemLabel="name"/>
	                                                    </form:select>
	                                                    <div class="invalid-feedback"><form:errors path="employeeId"/></div>
	                                                </div>
	                            
	                                                <div class="form-group">
	                                                    <label for="code"><strong><spring:message code="label.record.code"/>: </strong></label>
	                                                    <form:input path="code" cssClass="form-control" cssErrorClass="form-control is-invalid"/>
	                                                    <div class="invalid-feedback"><form:errors path="code"/></div>
	                                                </div>
	                            
	                                                <div class="form-group">
	                                                    <label for="type"><strong><spring:message code="label.record.type"/>: </strong></label>
	                                                    <div>
	                                                        <div class="form-check form-check-inline">
	                                                            <form:radiobutton path="type" id="typeTT" value="TT" cssStyle="form-check-input" cssErrorClass="form-check-input is-invalid"/>
	                                                            &nbsp;<label class="form-check-label" for="typeTT"><spring:message code="label.record.select.achievement"/></label>
	                                                        </div>
	                                                        <div class="form-check form-check-inline">
	                                                            <form:radiobutton path="type" id="typeKL" value="KL" cssStyle="form-check-input" cssErrorClass="form-check-input is-invalid"/>
	                                                            &nbsp;<label class="form-check-label" for="typeKL"><spring:message code="label.record.select.discipline"/></label>
	                                                        </div>
	                                                        <div class="form-check form-check-inline">
	                                                            <form:radiobutton path="type" id="typeNone" value="NONE" cssStyle="form-check-input" cssErrorClass="form-check-input is-invalid"/>
	                                                            &nbsp;<label class="form-check-label" for="typeNone"><spring:message code="label.record.select.none"/></label>
	                                                        </div>
	                                                    </div>
	                                                    <div class="invalid-feedback"><form:errors path="type"/></div>
	                                                </div>
		                                            <div class="form-group col">
		                                                <label for="reason"><strong><spring:message code="label.record.reason"/>: </strong></label>
		                                                <form:textarea path="reason" cssClass="form-control" cssErrorClass="form-control is-invalid"/>
		                                                <div class="invalid-feedback"><form:errors path="reason"/></div>
	                                       			</div>
													<div class="row">
			                                            <div class="form-group col">
			                                                <button type="submit" class="btn btn-success"><i class="far fa-save"></i> <spring:message code="label.record.button.submit"/></button>
			                                                <a href="<spring:url value="/record"/>" class="btn btn-warning"><i class="fas fa-angle-left"></i>  <spring:message code="label.record.button.back"/></a>
			                                            </div>
			                                        </div>
								            </form:form>
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