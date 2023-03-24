<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Fur
  Date: 2021/9/11
  Time: 15:32
  To change this template use File | Settings | File Templates.
--%>
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
    <script src="${pageContext.request.contextPath}/ui-template2/assets/js/dark-light.js"></script>
    <title>Plume - 个人资料页</title>
</head>
<body>



<div class="loader-wrapper">
    <div class="count"></div>
    <div class="loader"></div>
    <div class="loader2"></div>
</div>
<!-- header area start from here-->
<header class="header-area ">
    <div class="container">
        <div class="header-wrapper d-flex align-items-center justify-content-between">
            <!--header-logo-->
            <div class="header-logo">
                <a href="${pageContext.request.contextPath}/user/toMain"><img src="${pageContext.request.contextPath}/ui-template1/static/picture/blog-logo.png" width="80px" height="80px" alt="logo"></a>
            </div>
            <!-- menu-bar -->
            <div class="menu-bar">
                <ul class="d-flex align-items-center justify-content-between">
                    <li><a href="#">首页</a>
                        <ul class="dropdown">
                            <li><a href="${pageContext.request.contextPath}/ui-template2/homepage.html">Home</a></li>
                            <li><a href="${pageContext.request.contextPath}/ui-template2/homepage-sidebar.html">Home With Sidebar</a></li>
                            <li><a href="${pageContext.request.contextPath}/ui-template2/homepage-minimal.html">Home Minimal</a></li>
                            <li><a href="${pageContext.request.contextPath}/ui-template2/home-sidebar-minimal.html">Home Minimal Two</a></li>
                        </ul>
                    </li>
                    <li><a href="${pageContext.request.contextPath}/ui-template2/author.html">关于我</a></li>
                    <%--知识社区后期加入 模板在d盘有--%>
                    <li><a href="#">知识社区</a></li>
                    <li><a href="${pageContext.request.contextPath}/ui-template2/membership.html">友链</a></li>
                    <li><a href="${pageContext.request.contextPath}/ui-template2/tag-page.html">音乐盒</a></li>
                    <li><a href="${pageContext.request.contextPath}/ui-template2/contact.html">工具/资源</a></li>
                    <li><a href="#">钢琴馆</a></li>
                    <li><a href="${pageContext.request.contextPath}/blog/toInsertBlog">发布博客</a></li>
                </ul>
            </div>
            <!-- sign-in area -->
            <div class="sign-in-area">
                <ul class="d-flex align-items-center justify-content-between">
                    <a href="${pageContext.request.contextPath}/user/userInfo?userEmail=${user.userEmail}"><img src="${pageContext.request.contextPath}/svg/personIcon.svg"></a>
                    <li class="popup"><img src="${pageContext.request.contextPath}/ui-template2/assets/img/svg/search.svg" alt=""></li>
                    <li class="dark-light"><img src="${pageContext.request.contextPath}/ui-template2/assets/img/svg/dark-light.svg" alt=""></li>
                    <li class="sign-click relative">Sign in
                        <!-- sign-in dropdawn -->
                        <div class="sign-in-card">
                            <h3>欢迎回到Plume</h3>
                            <p>&nbsp;&nbsp;登录我们的网站，以观看并且收藏我们的精彩博客，在知识社区里找到自己感兴趣的话题...</p>
                            <div class="input-group-icon radious-6 mb-30">
                                <input type="email" placeholder="键入你的邮箱...">
                                <img src="${pageContext.request.contextPath}/ui-template2/assets/img/svg/mail-sign.svg" alt="">
                            </div>
                            <div class="sign-link">
                                <p>还没有账户?</p>
                                <a href="${pageContext.request.contextPath}/user/toregister">前 往 注 册</a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <!--mobile menu icon-->
                        <div class="menu-toggole">
                            <span class="menu-show comon-tab">
                                <img src="${pageContext.request.contextPath}/ui-template2/assets/img/svg/toggle.svg" alt="">
                            </span>
                            <span class="menu-close comon-tab">
                                <img src="${pageContext.request.contextPath}/ui-template2/assets/img/svg/close.svg" alt="">
                            </span>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- menu search popup -->
    <div class="search-popup-area">
        <div class="search-option">
            <div class="search-box">
                <img src="${pageContext.request.contextPath}/ui-template2/assets/img/svg/search.svg" alt="">
                <input id="search" name="search" type="text" data-list=".data-list" placeholder="请输入博文关键词...">
            </div>
            <%--     搜索框数据 后期可以考虑改用Lucene全局搜索      --%>
            <div class="data-list-wrapper">
                <ul class="data-list">
                    <c:forEach items="${blogList}" var="blog">
                        <li>
                            <a href="${pageContext.request.contextPath}/blog/queryBlogById?blogI=${blog.blogId}">
                                <div class="search-content">
                                    <div class="search-title">
                                        <h4>${blog.blogTitle} <span>${blog.createTime}</span></h4>
                                    </div>
                                    <p>${blog.blogSummary}</p>
                                </div>
                                <img src="${pageContext.request.contextPath}/ui-template2/assets/img/svg/arrow-left.svg" alt="">
                            </a>
                        </li>
                    </c:forEach>


                </ul>
            </div>
        </div>
        <div class="popup-close-icon">
            <img src="${pageContext.request.contextPath}/ui-template2/assets/img/svg/close-icon.svg" alt="">
        </div>
    </div>
</header>
<div class="single-author-banner">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 m-auto px-md-0">
                <div class="profile-area">
                    <div class="row align-items-center">
                        <div class="col-lg-5">
                            <%--                            头像先默认jay，后期加入修改头像功能--%>
                            <img src="${pageContext.request.contextPath}/img/jay.jpg" alt="" class="blog-profile-img">
                        </div>
                        <div class="col-lg-7">
                            <div class="blog-profile-content">
                                <h3>用户名:${user.userName}</h3>
                                <span>邮箱:${user.userEmail}</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br/><br/>
                                <span>ID号:${user.userId}</span> <br/><br/>
                                <span>性别:${user.userSex}</span>
                                <%--                                <h4>Follow me :</h4>--%>
                                <%--                                <div class="social-icon">--%>
                                <%--                                    <ul class="d-flex align-items-center">--%>
                                <%--                                        <a href="#" class="ui wechat circular icon button"><i class="weixin icon"></i></a>--%>
                                <%--                                        <a href="#" class="ui qq circular icon button" data-content="316392836" data-position="bottom center"><i class="qq icon"></i></a>--%>
                                <%--                                        <a href="https://github.com/FurMax" target="_blank" class="ui github circular icon button" data-content="点击跳转GitHub" data-position="bottom center"><i class="github icon"></i></a>--%>
                                <%--                                    </ul>--%>
                                <%--                                </div>--%>
                                <%--                                <div class="ui wechat-qr flowing popup transition hidden">--%>
                                <%--                                    <img src="${pageContext.request.contextPath}/img/MyVX.png" alt="" class="ui rounded image" style="width: 110px">--%>
                                <%--                                    <div align="center">微信</div>--%>
                                <%--                                </div>--%>
                                <%--                                <div class="ui qq-qr flowing popup transition hidden">--%>
                                <%--                                    <img src="${pageContext.request.contextPath}/img/MyQQ.png" alt="" class="ui rounded image" style="width: 110px">--%>
                                <%--                                    <div align="center">QQ</div>--%>
                                <%--                                </div>--%>
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

<div class="single-author-card-area">
    <div class="section-heading text-center">
        <h2>Your Blogs</h2>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-10 m-auto">
                <div class="row">
                    <c:forEach var="blog" items="${blogs}">
                        <div class="col-lg-4 col-sm-6 mb-md-50 px-25 px-md-15  mb-lg-50">
                            <div class="related-post-card">
                                <div class="related-post-card-img">
                                    <img src="${pageContext.request.contextPath}/img/blog-${blog.blogTitle}.jpg" alt="">
                                </div>
                                <div class="related-post-card-content">
                                    <div class="rpc-content-timeline d-flex align-items-center justify-content-between">
                                        <h4>${blog.blogTag}</h4>
                                        <h5>${blog.createTime}</h5>
                                    </div>
                                    <div class="rpc-content-title">
                                        <h2><a href="${pageContext.request.contextPath}/blog/queryBlogById?blogId=${blog.blogId}">${blog.blogTitle}</a></h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.2/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/semantic-ui/2.2.4/semantic.min.js"></script>
<!-- Jquery -->
<script src="${pageContext.request.contextPath}/ui-template2/assets/js/default-js/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath}/ui-template2/assets/js/default-js/jquery-migrate-1.4.1.min.js"></script>
<script src="${pageContext.request.contextPath}/ui-template2/assets/js/default-js/popper.js"></script>
<script src="${pageContext.request.contextPath}/ui-template2/assets/js/default-js/bootstrap.min.js"></script>
<!--searchbox js-->
<script src="${pageContext.request.contextPath}/ui-template2/assets/js/plugin/jquery.hideseek.min.js"></script>
<!--isotop js-->
<script src="${pageContext.request.contextPath}/ui-template2/assets/js/plugin/isotop-pakage-min.js"></script>
<!-- IMAGE LOADED JS -->
<script src="${pageContext.request.contextPath}/ui-template2/assets/js/plugin/imagesloaded.pkgd.min.js"></script>
<!-- owl carousel -->
<script src="${pageContext.request.contextPath}/ui-template2/assets/js/plugin/owl-carousel/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/ui-template2/assets/js/plugin/owl-carousel/owl-custom.js"></script>
<!--video popup-->
<script src="${pageContext.request.contextPath}/ui-template2/assets/js/plugin/youtube-overlay.js"></script>
<!-- highlight js -->
<script src="${pageContext.request.contextPath}/ui-template2/assets/js/plugin/highlight.min.js"></script>

<!--nice-select js here-->
<script src="${pageContext.request.contextPath}/ui-template2/assets/js/plugin/nice-select/jquery.nice-select.min.js"></script>
<script src="${pageContext.request.contextPath}/ui-template2/assets/js/scripts.js"></script>
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
