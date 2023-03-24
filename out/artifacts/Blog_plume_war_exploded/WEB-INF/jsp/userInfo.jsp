<%--
  Created by IntelliJ IDEA.
  User: Fur
  Date: 2021/9/9
  Time: 21:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layuiadmin/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layuiadmin/style/admin.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ui-template2/assets/css/base-style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ui-template2/assets/css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/semantic-ui/2.2.4/semantic.min.css">
    <title>Title</title>
</head>
<body>
<div class="single-author-banner">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 m-auto px-md-0">
                <div class="profile-area">
                    <div class="row align-items-center">
                        <div class="col-lg-5">
                            <img src="${pageContext.request.contextPath}/img/jay.jpg" alt="" class="blog-profile-img">
                        </div>
                        <div class="col-lg-7">
                            <div class="blog-profile-content">
                                <h3>Administrator</h3>
                                <span>邮箱:${user.userEmail}</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <span>Id号:${user.userId}</span> <br/><br/>
                                <span>用户名:${user.userName}</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <span>初始密码:${user.password}</span><br>
                                <h4>Follow me :</h4>
                                <div class="social-icon">
                                    <ul class="d-flex align-items-center">
                                        <a href="#" class="ui wechat circular icon button"><i class="weixin icon"></i></a>
                                        <a href="#" class="ui qq circular icon button" data-content="316392836" data-position="bottom center"><i class="qq icon"></i></a>
                                        <a href="https://github.com/FurMax" target="_blank" class="ui github circular icon button" data-content="点击跳转GitHub" data-position="bottom center"><i class="github icon"></i></a>
                                    </ul>
                                </div>
                                <div class="ui wechat-qr flowing popup transition hidden">
                                    <img src="${pageContext.request.contextPath}/img/MyVX.png" alt="" class="ui rounded image" style="width: 110px">
                                    <div align="center">微信</div>
                                </div>
                                <div class="ui qq-qr flowing popup transition hidden">
                                    <img src="${pageContext.request.contextPath}/img/MyQQ.png" alt="" class="ui rounded image" style="width: 110px">
                                    <div align="center">QQ</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="profile-shape-img">
                        <img src="${pageContext.request.contextPath}/ui-template2/assets/img/shape-profile.png" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.2/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/semantic-ui/2.2.4/semantic.min.js"></script>
<script type="text/javascript">
    $('.wechat').popup({
        popup : $('.wechat-qr'),
        position: 'bottom center'
    });

    // 显示QQ
    $('.qq').popup({
        popup : $('.qq-qr'),
        position: 'bottom center'
    });
</script>
</html>
