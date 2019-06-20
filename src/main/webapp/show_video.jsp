<%@ page import="pl.sda.Video" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show video</title>
</head>
<body>
<%
    Video v = new Video();
    v.setTitle("Whatever works");
    v.setCategory("Comedy");
    v.setRating(7.4);

    request.setAttribute("video2", v);
%>
<jsp:useBean id="video1" class="pl.sda.Video">
    <jsp:setProperty name="video1" property="title" value="Rocky"/>
    <jsp:setProperty name="video1" property="category" value="Action"/>
    <jsp:setProperty name="video1" property="rating" value="8.2"/>
</jsp:useBean>

The video we have is: <b>${video1.title}</b>
in category: <b>${video1.category}</b>
with rating of <b>${video1.rating}</b>
<br/>
<br/>
The video we have is: <b>${video2.title}</b>
in category: <b>${video2.category}</b>
with rating of <b>${video2.rating}</b>
</body>
</html>
