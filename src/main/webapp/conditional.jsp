<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>conditional</title>
    <style>
        body {
            font-size: 32px;
            padding: 20px;
        }
    </style>
</head>
<body>
<c:if test="${param.page eq 'first'}">
    <div style="background-color: red;">First</div>
</c:if>
<c:if test="${param.page eq 'second'}">
    <div style="background-color: blue;">Second</div>
</c:if>
</body>
</html>
