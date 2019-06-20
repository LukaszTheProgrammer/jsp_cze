<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dynamic Layout</title>
    <style>
        .mars {
            width: 800px;
            background-color: indianred;
            color: lightcoral;
            font-size: 15px;
            font-family: Arial, sans-serif;
            padding: 10px;
        }

        .venus {
            width: 300px;
            background-color: cornflowerblue;
            color: white;
            font-size: 18px;
            font-family: "Times New Roman", sans-serif;
            padding: 20px;
        }

        .saturn {
            width: 90%;
            background-color: green;
            color: gold;
            font-size: 12px;
            font-family: "Impact", sans-serif;
            padding: 12px;
        }
    </style>
</head>
<body>
<div class="${param.layoutName == null || param.layoutName == '' ? 'mars' : param.layoutName}">
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas et mi luctus, pretium diam id, bibendum tortor.
    Morbi vel tincidunt purus. Cras placerat pellentesque quam quis convallis. Sed nec purus arcu. Duis placerat
    scelerisque ipsum interdum mollis. Cras efficitur est leo, eu aliquet turpis aliquam at. Quisque a metus porta,
    posuere nisi in, ornare sem. Aliquam porttitor aliquam ipsum sed ultrices. In quis erat ligula. Nullam efficitur
    neque augue, at tempus nunc venenatis a. Fusce dictum lacus eget hendrerit imperdiet. Donec nec leo eget dolor
    cursus finibus. Quisque ipsum felis, porta ac massa vitae, tincidunt faucibus diam. Ut tristique ligula a orci
    dictum ornare. Quisque ut efficitur nunc.
</div>
<div>
    <a href="dynamic_layout.jsp?layoutName=mars">Mars</a>
    <a href="dynamic_layout.jsp?layoutName=venus">Venus</a>
    <a href="dynamic_layout.jsp?layoutName=saturn">Saturn</a>
</div>
</body>
</html>
