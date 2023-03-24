<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改信息</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改信息</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/book/updateBook" method="post">
        书籍编号：<input type="text" name="bookID" value="${modelBook.bookID}"/>
        书籍名称：<input type="text" name="bookName" value="${modelBook.bookName}"/>
        书籍数量：<input type="text" name="bookCounts" value="${modelBook.bookCounts}"/>
        书籍详情：<input type="text" name="detail" value="${modelBook.detail}"/>
        <input type="submit" value="修改"/>
    </form>

</div>