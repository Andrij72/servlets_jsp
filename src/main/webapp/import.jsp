<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <title>Title</title>
</head>
<body>
<c:url value="title.jsp" var="importUrl">
<c:param name="pageName" value="import template page."/>
</c:url>
<c:import url="${importUrl}"/>
</body>
</html>