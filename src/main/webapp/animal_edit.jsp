<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<html>
<head>
    <title>sql:query Tag</title>
</head>
<body>

<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost/mysql_cze"
                   user="root" password="root"/>

<c:if test="${pageContext.request.method == 'GET'}">
    <sql:query dataSource="${db}" var="rs">
        SELECT * from Animal where id = ?;
        <sql:param value="${param.id}"/>
    </sql:query>

    <form method="POST" action="animal_edit.jsp?id=${param.id}">
        <input type="text" name="name" value="${rs.rows[0].name}"/>
        <input type="submit"/>
    </form>
</c:if>
<c:if test="${pageContext.request.method == 'POST'}">
    <sql:update dataSource="${db}" var="count">
        Update Animal set name = ? where id = ?;
        <sql:param value="${param.name}"/>
        <sql:param value="${param.id}"/>
    </sql:update>

    <jsp:forward page="animals_list.jsp" >
        <jsp:param name="updateResult" value="${count}" />
    </jsp:forward>
</c:if>

</body>
</html>
