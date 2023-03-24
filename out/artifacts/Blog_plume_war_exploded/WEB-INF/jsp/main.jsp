<%@ page import="org.springframework.ui.Model" %>
<%@ page import="org.springframework.ui.ModelMap" %>
<%@ page import="com.furmax.pojo.Blog" %>
<%@ page import="java.util.List" %>
<%--进度：时间转换还没完成。找一个模板然后想想怎么改--%>
<%--明天计划：将新表单验证器插件试着添加进来，其次计划写博客怎么实现--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" data-theme="light">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Plume - 个人博客&知识论坛</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ui-template1/static/css/slick.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ui-template1/static/css/slick-theme.css"/>
    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/ui-template1/static/css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/ui-template1/static/css/materialdesignicons.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/ui-template1/static/css/fontawesome.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/ui-template1/static/css/pe-icon-7-stroke.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/ui-template1/static/css/style.css" rel="stylesheet">


    <link rel="icon" href="assets/img/favicon.ico" type="image/gif" sizes="16x16">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ui-template2/assets/css/base-style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ui-template2/assets/css/style.css">
    <script src="${pageContext.request.contextPath}/ui-template2/assets/js/dark-light.js"></script>
</head>
<body class="placeholder">
<%--<div class="loader-wrapper">--%>
<%--    <div class="count"></div>--%>
<%--    <div class="loader"></div>--%>
<%--    <div class="loader2"></div>--%>
<%--</div>--%>

<div id="preloader">
    <div id="status">
        <div class="text-center"><img src="${pageContext.request.contextPath}/ui-template1/static/picture/blog-logo.png" height="100px" width="100px" alt=""> </div>
        <div class="spinner">
            <div class="double-bounce1"></div>
            <div class="double-bounce2"></div>
        </div>
    </div>
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

                    <li><a href="${pageContext.request.contextPath}/user/toBBSHome">知识社区</a></li>
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
<%--轮播图区域 不用c:forEach标签 挑几篇合适的博文放上去即可。用foreach会将所有博文全部展示在轮播图，没有必要。--%>
<!-- banner area start from here -->
<section class="banner-area">
    <div class="container">
        <div class="banner-owl-area owl-carousel" data-carousel-loop="true" data-carousel-autoplay="false" data-carousel-mousedrag="true" data-carousel-items="1" data-carousel-nav="false">
            <div class="banner-single-wrapper">
                <div class="banner-img-area">
                    <h4>featured blogs</h4>
                    <div class="banner-img">
                        <img src="${pageContext.request.contextPath}/img/blog-banner0.jpg" alt="">
                    </div>
                </div>
                <div class="banner-content-area">
                    <h5>Java</h5>
                    <h1><a href="#">Furmax个人博客项目介绍</a></h1>
                    <h4 class="date"><span>30.Aug.2021</span> - Furmax</h4>
                    <p>&nbsp;&nbsp;本项目为大二暑假初学SSM框架后的第一个实践项目，在做此项目时查阅了很多除ssm相关的技术。下面是前后端技术栈以及模板引用: </p>
                    <button class="btn btn-sm btn-radious-6 btn-black">Read More</button>
                </div>
            </div>
            <div class="banner-single-wrapper">
                <div class="banner-img-area">
                    <h4>featured blogs</h4>
                    <div class="banner-img">
                        <img src="${pageContext.request.contextPath}/img/blog-banner2.jpg" alt="">
                    </div>
                </div>
                <div class="banner-content-area">
                    <h5>Java</h5>
                    <h1><a href="#">Java学习路线</a></h1>
                    <h4 class="date"><span>31.Aug.2021</span> - Furmax</h4>
                    <p>&nbsp;&nbsp;本篇博文主要记录总结个人收藏的java学习路线。具体如下: </p>
                    <button class="btn btn-sm btn-radious-6 btn-black">Read More</button>
                </div>
            </div>
            <div class="banner-single-wrapper">
                <div class="banner-img-area">
                    <h4>featured blogs</h4>
                    <div class="banner-img">
                        <img src="${pageContext.request.contextPath}/img/blog-banner4.jpg" alt="">
                    </div>
                </div>
                <div class="banner-content-area">
                    <h5>Nosql</h5>
                    <h1><a href="#">NOSQL数据库应用与原理学习总结</a></h1>
                    <h4 class="date"><span>01.Sept.2021</span> - Furmax</h4>
                    <p> &nbsp;&nbsp;本文为写者与大三上学习NOSQL数据库应用与原理课程的学习总结，仅仅为了个人学习总结使用，若总结的不到位，见谅。 </p>
                    <button class="btn btn-sm btn-radious-6 btn-black">Read More</button>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- all stories section start here -->


<section class="all-stories-area pt-100 pb-50">
    <div class="section-heading text-center">
        <h2>All Blogs</h2>
    </div>
    <div class="container">
        <div class="row grid">
            <c:forEach items="${blogList}" var="blog">
            <div class="col-sm-6 col-lg-4 mb-30 grid-item">
                <div class="single-stories-card-content">
                        <div class="stories-card-img">
                            <img src="${pageContext.request.contextPath}/img/blog-${blog.blogTitle}.jpg">
                        </div>
                        <div class="stories-card-content">
                            <div class="sub-title-wrapper">
                                <h4 class="card-sub-title">${blog.blogTitle}</h4>
                                <h5 class="card-date">${blog.createTime}</h5>
                            </div>
                            <h4 class="card-title"><a href="${pageContext.request.contextPath}/blog/queryBlogById?blogId=${blog.blogId}">${blog.blogSummary}</a></h4>
                            作者: ${blog.blogMaster}
                        </div>

                </div>
            </div>
            </c:forEach>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="post-order-wrapper">
                    <ul class="d-flex align-items-center justify-content-between">
                        <li><a href=""><img class="mr-10" src="${pageContext.request.contextPath}/ui-template2/assets/img/svg/arrow-right.svg" alt="">Newer Post</a></li>
                        <li><a href="">Older Post <img class="ml-10" src="${pageContext.request.contextPath}/ui-template2/assets/img/svg/arrows-left.svg" alt=""></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- sports and food section start here-->
<section class="side-img-card-area pt-50 pb-100 pb-md-60 pt-md-30" >
    <div class="container">
        <div class="row">
            <div class="col-lg-6 mb-md-50">
                <div class="sports-blog-card">
                    <div class="section-heading">
                        <h2>#Java</h2>
                    </div>
                    <div class="side-card-wrapper">
                        <div class="side-img-card-wrapper mb-30 mb-md-0  mb-xs-30">
                            <div class="side-card-img">
                                <img src="${pageContext.request.contextPath}/img/single-blog-img1.jpg" alt="">
                            </div>
                            <div class="side-card-content">
                                <h4 class="card-title"><a href="${pageContext.request.contextPath}/WEB-INF/jsp/markdown初体验.jsp">markdown初体验</a></h4>
                                <p class="card-content">editor.md 是目前国内比较牛的markdown编辑器插件，通过使用editor.md，个人博客系统可以进行编写博客文章的功能。</p>
                            </div>
                        </div>
                        <div class="side-img-card-wrapper">
                            <div class="side-card-img">
                                <img src="${pageContext.request.contextPath}/img/single-blog-img2.jpg" alt="">
                            </div>
                            <div class="side-card-content">
                                <h4 class="card-title"><a href="#">TestBlog</a></h4>
                                <p class="card-content">这是测试测试测试</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="sports-blog-card">
                    <div class="section-heading">
                        <h2>#嵌入式</h2>
                    </div>
                    <div class="side-card-wrapper">
                        <div class="side-img-card-wrapper mb-30 mb-md-0 mb-xs-30">
                            <div class="side-card-img">
                                <img src="${pageContext.request.contextPath}/img/single-blog-img3.jpg" alt="">
                            </div>
                            <div class="side-card-content">
                                <h4 class="card-title"><a href="${pageContext.request.contextPath}/ui-template2/premium-page.html">How to Make a Perfect Pot of French Press Coffee.</a></h4>
                                <p class="card-content">这仅仅是测试哦</p>
                            </div>
                        </div>
                        <div class="side-img-card-wrapper">
                            <div class="side-card-img">
                                <img src= "${pageContext.request.contextPath}/img/single-blog-img2.jpg" alt="">
                            </div>
                            <div class="side-card-content">
                                <h4 class="card-title"><a href="../../ui-template2/premium-page.html">6 Surprising Foods You Should Never Freeze</a></h4>
                                <p class="card-content">A than in to so even of my times is front better on because the plans. The is perhaps for his own to was that that's it's less.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- popular tag section start here -->
<section class="popular-tag-area py-100 py-md-60 section-bg">
    <div class="container">
        <div class="col-md-12">
            <div class="section-heading d-flex align-items-center justify-content-between">
                <h2>Popular Tag</h2>
                <a href="">View all</a>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6 mb-30">
                    <a href="${pageContext.request.contextPath}/blogTag/queryAll?blogTag=Java" class="popular-single-tag-wrapper" style="background-image:url(${pageContext.request.contextPath}/img/blogTagBg0.jpg)">
                        <div class="tag-title">#Java</div>
                        <div class="tag-card">1</div>
                    </a>
                </div>
                <div class="col-lg-4 col-md-6 mb-30">
                    <a href="${pageContext.request.contextPath}/blogTag/queryAll?blogTag=LifeStyles" class="popular-single-tag-wrapper" style="background-image:url(${pageContext.request.contextPath}/img/blogTagBg3.jpg)">
                        <div class="tag-title">#LifeStyles</div>
                        <div class="tag-card">2</div>
                    </a>
                </div>
                <div class="col-lg-4 col-md-6 mb-30">
                    <a href="${pageContext.request.contextPath}/blogTag/queryAll?blogTag=嵌入式" class="popular-single-tag-wrapper" style="background-image:url(${pageContext.request.contextPath}/img/blogTagBg2.jpg)">
                        <div class="tag-title">#嵌入式</div>
                        <div class="tag-card">3</div>
                    </a>
                </div>
                <div class="col-lg-4 col-md-6 mb-lg-30">
                    <a href="${pageContext.request.contextPath}/blogTag/queryAll?blogTag=考研" class="popular-single-tag-wrapper " style="background-image:url(${pageContext.request.contextPath}/img/blogTagBg4.jpg)">
                        <div class="tag-title">#考研</div>
                        <div class="tag-card">4</div>
                    </a>
                </div>
                <div class="col-lg-4 col-md-6 mb-md-30">
                    <a href="${pageContext.request.contextPath}/blogTag/queryAll?blogTag=Python" class="popular-single-tag-wrapper" style="background-image:url(${pageContext.request.contextPath}/img/blogTagBg5.jpg)">
                        <div class="tag-title">#Python</div>
                        <div class="tag-card">5</div>
                    </a>
                </div>
                <div class="col-lg-4 col-md-6">
                    <a href="${pageContext.request.contextPath}/blogTag/queryAll?blogTag=其他资源" class="popular-single-tag-wrapper" style="background-image:url(${pageContext.request.contextPath}/img/blogTagBg6.jpg)">
                        <div class="tag-title">#其他资源</div>
                        <div class="tag-card">6</div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>
<%--此部分可以扩展。--%>
<!--subcribe section start here-->
<section class="subscribe-area ">
    <div class="container">
        <div class="row">
            <div class="col-md-10 m-auto">
                <div class="row align-items-center">
                    <div class="col-md-10 m-auto">
                        <div class="suscribe-wrapper">
                            <div class="section-heading text-center">
                                <h2>Newsletter</h2>
                                <p>Subscribe to see what we're thinking & get always latest update</p>
                            </div>
                            <div class="subscribe-input">
                                <input type="email" placeholder="enter your email">
                                <button class="btn">Subscribe</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<%--底部区域，可以弄少数导航界面。--%>
<footer class="footer-area">
    <div class="footer-top-area">
        <div class="container">
            <div class="footer-top-wrapper d-flex justify-content-between">
                <!--header-logo-->
                <div class="footer-logo-area">
                    <div class="header-logo ">
                        <a href="${pageContext.request.contextPath}/user/toMain">Plume</a>
                    </div>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
                    <div class="social-icon pt-40 pt-lg-15">
                        <h4>Fork Us</h4>
                        <ul class="d-flex align-items-center">
                            <li><a href="#"><img src="${pageContext.request.contextPath}/ui-template2/assets/img/svg/facebook.svg" alt=""></a></li>
                            <li><a href="#"><img src="${pageContext.request.contextPath}/ui-template2/assets/img/svg/instagram.svg" alt=""></a></li>
                            <li><a href="#"><img src="${pageContext.request.contextPath}/ui-template2/assets/img/svg/twitter.svg" alt=""></a></li>
                            <li><a href="#"><img src="${pageContext.request.contextPath}/ui-template2/assets/img/svg/youtube.svg" alt=""></a></li>
                        </ul>
                    </div>
                </div>
                <!-- menu-bar -->
                <div class="footer-menu-bar community-area">
                    <h4>Community</h4>
                    <ul>
                        <li><a href="#">About</a></li>
                        <li><a href="/author.html">Author</a></li>
                        <li><a href="/membership.html">Membership</a></li>
                        <li><a href="/style-guide.html">Style Guide</a></li>
                        <li><a href="/tag.html">Tag</a></li>
                        <li><a href="/single-blog.html">Blog</a></li>
                        <li><a href="/contact.html">Contact</a></li>
                    </ul>
                </div>
                <div class="footer-menu-bar usefull-link">
                    <h4>Useful Link</h4>
                    <ul>
                        <li><a href="#">FAQ</a></li>
                        <li><a href="#">Help Center</a></li>
                        <li><a href="#">Sitemap</a></li>
                        <li><a href="#">Team</a></li>
                    </ul>
                </div>
                <div class="contact-area">
                    <h4>Contact Us</h4>
                    <div class="contact-address">
                        <a href="#">blooria@gmail.com</a>
                        <p>+123 456 - 789</p>
                        <h4>Road - 13 , Block - B <span>Grand Canion , Arizona , USA</span></h4>
                    </div>
                    <div class="contact-app-link">
                        <h4>See the Map</h4>
                        <a href="#">https://www.google.com.bd/maps</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-bottom">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <p>Copyright © 2020 Blooria All Rights Reserved.</p>
                </div>
                <div class="col-lg-6">
                    <ul class="footer-privacy-card">
                        <li><a href="#">Terms of Service</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</footer>
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
    // Loader
    $(window).on('load', function() {
        $('#status').fadeOut();
        $('#preloader').delay(700).fadeOut('slow');
        $('body').delay(700).css({
            'overflow': 'visible'
        });
    });
</script>
</body>
</html>