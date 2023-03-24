<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Fur
  Date: 2021/9/9
  Time: 0:30
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
        <th>博客标题</th>
        <th>博客摘要</th>
        <th>作者</th>
        <th>创建时间</th>
        <th>所属类型</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>

    <c:forEach var="blog" items="${blogList}">
        <tr>
            <td>${blog.blogTitle}</td>
            <td>${blog.blogSummary}</td>
            <td>${blog.blogMaster}</td>
            <td>${blog.createTime}</td>
            <td>${blog.blogTag}</td>
                <%--            <td><button type="submit" name="userId" class="layui-btn" value="${user.userId}" onclick="deleteUser()">删除</button></td>--%>
        </tr>
    </c:forEach>

    </tbody>
</table>
</body>
</html>
