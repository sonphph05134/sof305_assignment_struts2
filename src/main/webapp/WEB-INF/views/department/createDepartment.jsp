
<%@include file="/WEB-INF/common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <s:head/>
    <%@include file="/WEB-INF/common/head.jsp"%>
</head>
<body >
    <section id="container">
        <!-- Begin header -->
        <%@include file="/WEB-INF/common/header.jsp"%>
        <!-- Begin header -->
        <div class="row">
             <!--Begin aside bar -->
            <div class="col-md-2" style="background-color: #34495e;">
                <ul class="nav nav-pills flex-column">
                    <li class="nav-item">
                        <a class="nav-link " href="<s:url action="homePage"/>" >homepage</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="<s:url action="department"/>" >department</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="<s:url action="employee"/>" >employee</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="<s:url action="record"/>" >recording</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="<s:url action="statistic"/>" >statistic</a>
                    </li>
                </ul>
            </div>
            <!--End aside bar -->
            <div class="col-md-10" style="background-color: #ecf0f1;">
                 <div class="form-group">&nbsp;</div>

                <div class="container">

                    <h2>departmentIndex.title</h2>
                    <div >&nbsp; </div>
                    <h2>departmentIndex.title.label</h2>
                    <div >&nbsp; </div>
            
                    <!-- BEGIN CREATE FORM -->

                    <div>
                            <s:form  method ="POST" theme="xhtml">

                                <div class="row">
                                        <s:textfield id="code" label="CODE" cssStyle="width: 900px" />
                                        <s:textfield id="name" label="NAME" cssStyle="width: 900px" />
                                </div>
                                <div class="row">
                                    <a href="<s:url action="department"/> " class="btn btn-dark">
                                        <i class="far fa-caret-square-left" > Back </i>
                                    </a>
                                    <s:submit type="button" cssClass="btn btn-primary"  >
                                        Submit
                                    </s:submit>
                                </div>

                            </s:form>

                            <!-- Begin Message --->

                            <!--  End Message --->
                    </div>

                        <!-- END CREATE FORM -->
    
                </div>
            </div>
        </div>
    </section>

</body>
</html>