<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost/mysql_cze"
                   user="root" password="root"/>
<sql:update dataSource="${db}" var="count">
    Delete from Animal where id = ?;
    <sql:param value="${param.id}"/>
</sql:update>
<jsp:forward page="animals_list.jsp" />
</body>
</html>
