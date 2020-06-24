    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <html>
    <head>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <title>Title</title>
    </head>
    <body>
    <% String hourParam = request.getParameter("hour");
        request.setAttribute("hourVar", hourParam);
    %>
    <c:if test="${hourVar>=10 && hourVar<20}"> ${hourVar} is a day!</c:if>
    </body>
    </html>
