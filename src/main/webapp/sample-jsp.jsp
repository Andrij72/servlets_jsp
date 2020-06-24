<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="com.andrkul.User" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Jsp samples</title>
</head>
<body>
<h3>Hi, JSP!</h3>
<hr/>
<% response.getWriter().write("Some message");
    out.print("Print after HEAD.");
%>
<br/>
<%= request.getRequestURI() %>
<br/>
<br/>
<%=  LocalDateTime.now() %>
<hr/>
<h4>List users:</h4>
   <%  request.getAttribute("users");%>
<ur>
    <c:forEach var="user" items="${users}">
        <li>[ Name:${user.name}, age:${user.age} ]</li>
    </c:forEach>
</ur>

</body>
</html>
