<%--
  Created by IntelliJ IDEA.
  User: Fur
  Date: 2021/12/3
  Time: 9:40
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

书名:<input type="text" id="text1" name="bookName" class="layui-input"><br/>
ISBN号:<input type="text" id="text2" name="ISBN" class="layui-input"><br/>
库存:<input type="text" id="text3" name="bookCounts" class="layui-input"><br/>
数量:<input type="text" id="text4" name="bookSum" class="layui-input"><br/>
<button type="button" onclick="submit()" class="layui-btn">提交</button>

</body>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/ui-template1/static/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
    function submit() {
        var bookName = document.getElementById("text1").value;
        var ISBN = document.getElementById("text2").value;
        var bookCounts = document.getElementById("text3").value;
        var bookSum = document.getElementById("text4").value;
        $.ajax({
            url:"${pageContext.request.contextPath}/temp/updateBook?bookName="+bookName+
                "&ISBN="+ISBN+"&bookCounts="+bookCounts+"&bookSum="+bookSum,
            method:'GET',
            cache:false,
            success:function(){
                window.location.href="${pageContext.request.contextPath}/WEB-INF/jsp/bookManagerUI.jsp";
            }
        })
    }
</script>
</html>
