<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@page info="an index page" %>
<%@page errorPage="error.jsp" %>
<html>
<head>
    <title>Main page</title>
    <link rel="stylesheet" href="main.css">
</head>
<body>
<%@include file="menu.jsp"%>
<h1>Hello JSP</h1>
<jsp:param name="myParam" value="5"/>
<%
    String num1 = request.getParameter("n1");
    String num2 = request.getParameter("n2");

    int a = Integer.parseInt(num1);
    int b = Integer.parseInt(num2);
    int c = a / b;

    List<Integer> alist = new ArrayList<>();
%>

<%
    request.setAttribute("greeting","Hi there!");
%>

</body>
</html>