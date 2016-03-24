<%--
  Created by IntelliJ IDEA.
  User: tsj
  Date: 16-3-23
  Time: 下午5:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title></title>
</head>
<body>
<p>测试页面</p>

从testcontroller中获取list值，显示在当前页面中<br>
<c:forEach items="${list}" var="m">
  ${m.rid } :${m.name} <br>
</c:forEach>
</body>
</html>
