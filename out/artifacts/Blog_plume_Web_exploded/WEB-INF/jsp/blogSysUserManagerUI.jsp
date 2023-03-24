<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Fur
  Date: 2021/9/8
  Time: 15:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css"  media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layuiadmin/style/admin.css" media="all">
</head>
<body>
<table class="layui-table" lay-even="" lay-skin="nob">
    <colgroup>
        <col width="150">
        <col width="150">
        <col width="200">
    </colgroup>
    <thead>
    <tr>
        <th>用户名</th>
        <th>账户ID</th>
        <th>用户密码</th>
        <th>邮箱地址</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>

    <c:forEach var="user" items="${userList}">
        <tr>
            <td>${user.userName}</td>
            <td>${user.userId}</td>
            <td>${user.password}</td>
            <td>${user.userEmail}</td>
<%--            <td><button type="submit" name="userId" class="layui-btn" value="${user.userId}" onclick="deleteUser()">删除</button></td>--%>
        </tr>
    </c:forEach>

    </tbody>
</table>

<script language="JavaScript">
    <%--function deleteUser() {--%>
    <%--    //ajax删除--%>
    <%--    &lt;%&ndash;document.getElementById("bigform").action="${pageContext.request.contextPath}/deleteUser";&ndash;%&gt;--%>
    <%--    document.getElementById("bigform").submit();--%>
    <%--}--%>
</script>
</body>
</html>
