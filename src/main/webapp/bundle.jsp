<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page pageEncoding="UTF-8" %>
<html>
<head>
    <title>fmt:bundle JSTL formatting tag example</title>
</head>
<body>
<c:if test="${param.lang eq 'eng'}">
    <fmt:setLocale value="en_US" />
</c:if>
<fmt:bundle basename="pl.sda.message">
    <fmt:message key="message.first"/><br/>
    <fmt:message key="message.second"/><br/>
</fmt:bundle>
</body>
</html>
