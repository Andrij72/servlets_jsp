<%--
  Created by IntelliJ IDEA.
  User: andr
  Date: 21.06.2020
  Time: 1:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String pageNameParam = request.getParameter("pageName");
    request.setAttribute("pageVar", pageNameParam);
%>
<h3> It is a part of ${pageVar}</h3>
</body>
</html>
