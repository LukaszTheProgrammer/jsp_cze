<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<html>
<head>
    <title>Main page</title>
    <link rel="stylesheet" href="main.css">
</head>
<body>
<div class="container">
    <jsp:include page="menu.jsp" >
        <jsp:param name="menu" value="el" />
    </jsp:include>


    Wartość parametru pageName to: ${param.pageName}<br/>
    <%
        Map<String, String> map = new HashMap<>();
        map.put("Joe", "Geography");
        map.put("Jim", "English");
        map.put("John", "Math");
        request.setAttribute("map", map);
    %>
    <c:forEach items="${map}" var="element">
        ${element}<br/>
    </c:forEach>

    <c:forEach items="${requestScope}" var="element">
        ${element.value} <br/>
    </c:forEach>

    <c:forEach items="${param}" var="element">
        ${element.key} -> ${element.value} <br/>
    </c:forEach>

    <c:forEach items="${header}" var="element">
        ${element.key} -> ${element.value} <br/>
    </c:forEach>
</div>
</body>
</html>
