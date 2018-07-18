
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: hoais
  Date: 7/18/2018
  Time: 8:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="../../../WEB-INF/common/common.jsp"%>
    <%@include file="../../../WEB-INF/common/head.jsp"%>
</head>
<body>
    <%--<s:redirect action="login.action"></s:redirect>--%>
    <c:redirect url="login.action"></c:redirect>
</body>
</html>
