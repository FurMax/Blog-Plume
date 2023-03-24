<%--
  Created by IntelliJ IDEA.
  User: Fur
  Date: 2021/12/11
  Time: 16:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>文件上传</h2>
<form action="${pageContext.request.contextPath}/upload" enctype="multipart/form-data" method="post">
    <input type="file" name="file"/>
    <input type="submit" value="upload">
</form>
<br/>
<h2>文件下载：</h2>
<a href="${pageContext.request.contextPath}/download">点击下载</a>
</body>
</html>
