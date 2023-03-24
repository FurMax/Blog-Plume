<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
  <title>首页</title>
  <style type="text/css">
    a {
      text-decoration: none;
      color: black;
      font-size: 18px;
    }
    h3 {
      width: 180px;
      height: 38px;
      margin: 100px auto;
      text-align: center;
      line-height: 38px;
      background: deepskyblue;
      border-radius: 4px;
    }
  </style>
</head>
<body>

<h3>
  <a href="${pageContext.request.contextPath}/user/toLoginPage">登录页面</a><br>
  <a href="${pageContext.request.contextPath}/article/toBBS">测试一下</a>
  <a href="${pageContext.request.contextPath}/article/toTestSubarea">测试一下2</a>
  <a href="${pageContext.request.contextPath}/admin/toSystemDemo1">系统分析后台</a>
  <a href="${pageContext.request.contextPath}/user/toDemoPage">实验10</a><br/>
  <a href="${pageContext.request.contextPath}/temp/toBMSAdmin">测试图书管理系统后台</a><br/>
  <a href="${pageContext.request.contextPath}/temp/toFileDemoPage1">测试文件上传和下载</a>

</h3>
</body>
</html>