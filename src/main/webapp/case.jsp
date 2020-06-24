<%--
  Created by IntelliJ IDEA.
  User: andr
  Date: 21.06.2020
  Time: 0:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <title>Title</title>
</head>
<body>
<%
    String degreeParam = request.getParameter("degree");
    request.setAttribute("degreeVar", degreeParam);
%>
<c:choose>
  <c:when test="${degreeVar<=-5}"> It's frost </c:when>
    <c:when test="${degreeVar>-5 && degreeVar<=5}"> It's cold </c:when>
    <c:when test="${degreeVar>5 && degreeVar<=10}"> It's fresh </c:when>
    <c:when test="${degreeVar>10 && degreeVar<=25}"> It's warm </c:when>
    <c:when test="${degreeVar>25}"> It's hot </c:when>
    <c:otherwise> "?Please,choose your temperature..."</c:otherwise>
</c:choose>
</body>
</html>
