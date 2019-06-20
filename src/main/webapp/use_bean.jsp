<%@ page import="pl.sda.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Main page</title>
    <link rel="stylesheet" href="main.css">
</head>
<body>
<div class="container">
    <jsp:include page="menu.jsp" >
        <jsp:param name="menu" value="use_bean" />
    </jsp:include>
<jsp:useBean id="u1" class="pl.sda.User" >
    <jsp:setProperty name="u1" property="age" value="20" />
    <jsp:setProperty name="u1" property="firstname" value="Jim" />
    <jsp:setProperty name="u1" property="lastname" value="Beam" />
</jsp:useBean>

${u1.firstname}<br/>
${u1.lastname}<br/>
${u1.age}
</div>

</body>
</html>