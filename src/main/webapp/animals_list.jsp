<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <title>sql:query Tag</title>
</head>
<body>
<c:if test="${param.updateResult == 1}">
    <b>Pomyślnie zauktualizowano!</b><br/>
</c:if>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost/mysql_cze"
                   user="root" password="root"/>

<sql:query dataSource="${db}" var="rs">
    SELECT * from Animal;
</sql:query>

<c:forEach items="${rs.rows}" var="row">
    ${row.id}. ${row.name} <a href="animal_edit.jsp?id=${row.id}">Edit</a>
    <a href="animal_delete.jsp?id=${row.id}">Delete</a><br/>
</c:forEach>

</body>
</html>