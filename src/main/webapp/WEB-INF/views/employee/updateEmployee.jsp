<%@page import="vn.poly.sof302.sonphph05134.common.entities.Employee"%>
<%@page pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<%@include file="/WEB-INF/views/common/head.jsp"%>
	    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/gijgo@1.9.6/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://cdn.jsdelivr.net/npm/gijgo@1.9.6/css/gijgo.min.css" rel="stylesheet" type="text/css" />
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

	$('#datepicker').datepicker()
    .on('changeDate', function(e){
        var y = e.date.getFullYear(),
            _m = e.date.getMonth() + 1,
            m = (_m > 9 ? _m : '0'+_m),
            _d = e.date.getDate(),
            d = (_d > 9 ? _d : '0'+_d);
        $(this).text(y + '-' + m + '-' + d);
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
    <%@include file="/WEB-INF/views/common/navibars.jsp"%>

    <section id="container">
    
        <div class="row">
                    <!--Begin aside bar -->
                    <div class="col-md-2" style="background-color: #34495e;">
                        <ul class="nav nav-pills flex-column">
                          <li class="nav-item">
                            <a class="nav-link " href="<c:url value="/"/>"><spring:message code="employeeIndex.homepage"/></a>
                          </li>
                          <li class="nav-item">
                            <a class="nav-link " href="<c:url value="/department"/>"><spring:message code="employeeIndex.department"/></a>
                          </li>
                          <li class="nav-item">
                            <a class="nav-link active" href="<c:url value="/employee"/>"><spring:message code="employeeIndex.employee"/></a>
                          </li>
                          <li class="nav-item">
                            <a class="nav-link " href="<c:url value="/record"/>"><spring:message code="employeeIndex.recording"/></a>
                          </li>
                          <li class="nav-item">
                            <a class="nav-link " href="<c:url value="/statistic"/>"><spring:message code="employeeIndex.statistic"/></a>
                          </li>
                        </ul>
                    </div>
                <!--End aside bar -->
                     <div class="col-md-10" style="background-color: #ecf0f1;">
                        <section id="main-content">
                            <section class="wrapper">
                                <div >&nbsp; </div>
                                <div class="container">
                                    <h2>Welcome Employee Management</h2> 
                                    <div>&nbsp;</div>
                                    <h2>Update Employee screen</h2>
                                    <!-- Begin Create screen -->
                                    <div>
                                        <spring:url value="/employee/updateEmployee/${id}" var="formAction"></spring:url>
                                        <form:form action="${formAction}" method="POST" modelAttribute="employeeUpdateForm" enctype="multipart/form-data">
                            
	                                        <div class="row">
	                                            <div class="col">
	
	                                                 <div class="form-group">
	                                                    <label for="departmentId"><strong><spring:message code="employeeIndex.department"/>: </strong></label>
	                                                    <form:select path="departmentId" cssClass="form-control" cssErrorClass="form-control is-invalid">
	                                                        <form:option value="">--- Please select department ---</form:option>
	                                                        <form:options items="${departments}" itemValue="id" itemLabel="name"/>
	                                                    </form:select>
	                                                    <div class="invalid-feedback"><form:errors path="departmentId"/></div>
	                                                </div>
	                            
	                                                <div class="form-group">
	                                                    <label for="code"><strong><spring:message code="employeeIndex.code.label"/>: </strong></label>
	                                                    <form:input path="code" cssClass="form-control" cssErrorClass="form-control is-invalid"/>
	                                                    <div class="invalid-feedback"><form:errors path="code"/></div>
	                                                </div>
	                            
	                                                <div class="form-group">
	                                                    <label for="name"><strong><spring:message code="employeeIndex.name.label"/>: </strong></label>
	                                                    <form:input path="name" cssClass="form-control" cssErrorClass="form-control is-invalid"/>
	                                                    <div class="invalid-feedback"><form:errors path="name"/></div>
	                                                </div>
	                            
	                                                 <div class="form-group">
	                                                    <label for="birthday"><strong><spring:message code="label.employee.birthday"/>: </strong></label>
	                                                    <form:input path="birthday" cssClass="form-control" cssErrorClass="form-control is-invalid" 
	                                                    	type ="date" id ="datepicker" data-date-format="yyyy-mm-dd" />
															    
	                                                    <div class="invalid-feedback"><form:errors path="birthday"/></div>
	                                                </div>
													<div class="form-group">
	                                                    <label for="name"><strong><spring:message code="label.employee.gender"/>: </strong></label>
	                                                    <div>
	                                                        <div class="form-check form-check-inline">
	                                                            <form:radiobutton path="gender" id="genderMale" value="MALE" cssStyle="form-check-input" cssErrorClass="form-check-input is-invalid"/>
	                                                            &nbsp;<label class="form-check-label" for="genderMale"><spring:message code="label.employee.gender.male"/></label>
	                                                        </div>
	                                                        <div class="form-check form-check-inline">
	                                                            <form:radiobutton path="gender" id="genderFemale" value="FEMALE" cssStyle="form-check-input" cssErrorClass="form-check-input is-invalid"/>
	                                                            &nbsp;<label class="form-check-label" for="genderFemale"><spring:message code="label.employee.gender.female"/></label>
	                                                        </div>
	                                                        <div class="form-check form-check-inline">
	                                                            <form:radiobutton path="gender" id="genderUnknow" value="UNDEFINED" cssStyle="form-check-input" cssErrorClass="form-check-input is-invalid"/>
	                                                            &nbsp;<label class="form-check-label" for="genderUnknow"><spring:message code="label.employee.gender.unknown"/></label>
	                                                        </div>
	                                                    </div>
	                                                    <div class="invalid-feedback"><form:errors path="gender"/></div>
	                                                </div>
	                                                <div class="form-group">
	                                                    <label for="email"><strong><spring:message code="label.employee.email"/>: </strong></label>
	                                                    <form:input path="email" cssClass="form-control" cssErrorClass="form-control is-invalid"/>
	                                                    <div class="invalid-feedback"><form:errors path="email"/></div>
	                                                </div>
	                            
	                                                <div class="form-group">
	                                                    <label for="phone"><strong><spring:message code="label.employee.phone"/>: </strong></label>
	                                                    <form:input path="phone" cssClass="form-control" cssErrorClass="form-control is-invalid"/>
	                                                    <div class="invalid-feedback"><form:errors path="phone"/></div>
	                                                </div>
	                            
	                                                <div class="form-group">
	                                                    <label for="salary"><strong><spring:message code="label.employee.salary"/>: </strong></label>
	                                                    <form:input path="salary" cssClass="form-control" cssErrorClass="form-control is-invalid"/>
	                                                    <div class="invalid-feedback"><form:errors path="salary"/></div>
	                                                </div>
	                            
	                                            </div>
	                                            <div class="col">
	                                                <div class="form-group">
	                                                    <label><spring:message code="label.employee.upload.image"/></label>
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
	                                                <label for="notes"><strong><spring:message code="label.employee.notes"/>: </strong></label>
	                                                <form:textarea path="notes" cssClass="form-control" cssErrorClass="form-control is-invalid"/>
	                                                <div class="invalid-feedback"><form:errors path="notes"/></div>
	                                            </div>
	                                        </div>
	                            
	                                        <div class="row">
	                                            <div class="form-group col">
	                                                <button type="submit" class="btn btn-success"><i class="far fa-save"></i> <spring:message code="label.employee.button.submit"/></button>
	                                                <a href="<spring:url value="/employee"/>" class="btn btn-warning"><i class="fas fa-angle-left"></i> <spring:message code="label.employee.button.back"/></a>
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