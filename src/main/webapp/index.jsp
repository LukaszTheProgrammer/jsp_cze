<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.List" %>
<%@page errorPage="error.jsp" %>
<%@page pageEncoding="UTF-8" %>
<html>
<head>
    <title>Main page</title>
    <link rel="stylesheet" href="main.css">
</head>
<body>
<div class="container">
    <jsp:include page="menu.jsp" >
        <jsp:param name="menu" value="home" />
    </jsp:include>
    <h1 style="background-color: ${param.nazwa}">Home</h1>
    <a href="index.jsp?nazwa=red">Change theme to red</a>
    <a href="index.jsp?nazwa=blue">Change theme to blue</a>
    <a href="index.jsp?nazwa=green">Change theme to red</a>

</div>
</body>
</html>