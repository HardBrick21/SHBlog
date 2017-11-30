<%--
  Created by IntelliJ IDEA.
  User: Houlixuan
  Date: 2017/11/19
  Time: 14:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>主页哦</title>

</head>
<body>
<table>
    <tr>
        <td>id</td>
        <td>name</td>
    </tr>
    <c:forEach items="${ul}" var="User" varStatus="st">
        <tr>
            <td>${User.userid}</td>
            <td>${User.username}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
