<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<%
    String[] colors = new String[]{"blue", "red", "green", "white"};
    request.setAttribute("items", colors);
%>
<h3>Foreach loop :</h3>
<ul>
    <c:forEach var="item" items="${items}">
        <li>${item}</li>
    </c:forEach>
</ul>

<h3>Foreach loop with parameters :</h3>
<ul>
    <table>
        <thead>
        <tr>
            <th>item</th>
            <th>id</th>
            <th>count</th>
            <th>first</th>
            <th>last</th>
            <th>step</th>
        </thead>
        <tbody>
        <c:forEach var="item" step="1" items="${items}" varStatus="status">
            <tr>
                <td>${item}</td>
                <td>${status.index}</td>
                <td>${status.count}</td>
                <td>${status.first}</td>
                <td>${status.last}</td>
                <td>${status.step}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</ul>
<h3>For tokens loop</h3>
<ul>
    <c:forTokens var="itm" items="NewYork,Ottawa,Madrid,Helsenki,Kiev,
Minsk,Moskow,Abudabi,Stambul,Tellaviv" delims=",">
        <li>${itm}</li>
    </c:forTokens>
</ul>
</body>
</html>
