<%--
  Created by IntelliJ IDEA.
  User: Fur
  Date: 2021/12/2
  Time: 20:03
  To change this template use File | Settings | File Templates.
--%>
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
<form action="${pageContext.request.contextPath}/temp/queryBookByISBNAndBookName" method="post">
&nbsp;&nbsp;ISBN:<input type="text" id="ISBN" name="ISBN" class="layui-input">
&nbsp;&nbsp;书名: <input type="text" id="bookName" name="bookName" class="layui-input">
&nbsp;&nbsp;<button type="submit" class="layui-btn-normal" >查询</button>
</form>
<span id="btn0">2</span>
<table class="layui-table" lay-even="" lay-skin="nob">
    <colgroup>
        <col width="150">
        <col width="150">
        <col width="200">
    </colgroup>
    <thead>
    <tr>
        <th>ISBN</th>
        <th>书名</th>
        <th>数量</th>
        <th>库存</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>

    <c:forEach var="books" items="${bookList}">
        <tr>
            <td>${books.ISBN}</td>
            <td>${books.bookName}</td>
            <td><span id="bookSum">${books.bookSum}</span></td>
            <td><span id="bookCounts">${books.bookCounts}</span></td>
            <td>
                <c:choose>
                    <c:when test="${books.bookCounts!=0}">    <!--如果 -->
                        <button type="button" name="borrow" id="btn1" class="layui-btn"  onclick="borrowBook(${books.bookId},${books.bookCounts})">借阅</button>
                    </c:when>
                    <c:otherwise>  <!--否则 -->
                        <button type="button" name="borrow" id="btn1" class="layui-btn  layui-btn-disabled"  >借阅</button>
                    </c:otherwise>
                </c:choose>
                <c:choose>
                    <c:when test="${books.bookSum!=books.bookCounts}">    <!--如果 -->
                        <button type="button" name="return" id="btn2" class="layui-btn " onclick="returnBook(${books.bookId},${books.bookCounts})">归还</button>
                    </c:when>
                    <c:otherwise>  <!--否则 -->
                        <button type="button" name="return" id="btn2" class="layui-btn layui-btn-disabled" >归还</button>
                    </c:otherwise>
                </c:choose>

                <button type="button" name="update" class="layui-btn" onclick="updateBook()">修改</button>
                <button type="button" name="update" class="layui-btn" onclick="deleteBook(${books.bookId})">删除</button>

            </td>
        </tr>
    </c:forEach>

    </tbody>
</table>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/ui-template1/static/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">


    <%--function search() {--%>
    <%--    var ISBN = document.getElementById("ISBN").value;--%>
    <%--    var bookName = document.getElementById("bookName").value;--%>
    <%--    console.log(bookName);--%>
    <%--    $.ajax({--%>
    <%--        type:"GET",--%>
    <%--        url:"${pageContext.request.contextPath}/temp/queryBookByISBNAndBookName?ISBN="+ISBN--%>
    <%--            +"&bookName="+bookName,--%>
    <%--        cache:false,--%>
    <%--        success:function (data) {--%>
    <%--            window.location.reload();--%>
    <%--        }--%>
    <%--    })--%>

    <%--}--%>
    function updateBook() {
        $.ajax({
            url:"${pageContext.request.contextPath}/temp/toUpdateBookPage",
            method:'POST',
            cache:false,
            success:function () {
                window.location.href="toUpdateBookPage";
            }
        })
    }
    function deleteBook(bookId) {
        $.ajax({
            url:"${pageContext.request.contextPath}/temp/deleteBook?bookId="+bookId,
            method:'GET',
            success:function () {
                window.location.reload();
            }

        })
    }
   function borrowBook(bookId,bookCounts) {
        var bookSum = document.getElementById("bookSum");
        $.ajax({
            type:"GET",
            url:'${pageContext.request.contextPath}/temp/decreaseBooksStock?bookId='+bookId
            +"&bookCounts="+bookCounts,
            cache:false,
            success:function () {
                console.log(bookSum)
                console.log(bookCounts)

                window.location.reload();
            }
        })
   }
   function returnBook(bookId,bookCounts) {
        $.ajax({
            type:"GET",
            url:'${pageContext.request.contextPath}/temp/increaseBooksStock?bookId='+bookId+
                "&bookCounts="+bookCounts,
            cache: false,
            success:function () {
                console.log(bookCounts)

                window.location.reload();
            }
        })
   }

</script>
</body>
</html>
