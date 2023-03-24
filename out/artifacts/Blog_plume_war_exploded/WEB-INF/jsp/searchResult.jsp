<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Fur
  Date: 2021/11/3
  Time: 22:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>搜索结果页</title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/ui-template3/images/favicon.png" />

    <!-- Style Sheet-->
    <link rel="stylesheet" href="style.css"/>
    <link rel="stylesheet" id='bootstrap-css-css'  href='${pageContext.request.contextPath}/ui-template3/css/bootstrap5152.css?ver=1.0' type='text/css' media='all' />
    <link rel="stylesheet" id='responsive-css-css'  href='${pageContext.request.contextPath}/ui-template3/css/responsive5152.css?ver=1.0' type='text/css' media='all' />
    <link rel="stylesheet" id='pretty-photo-css-css'  href='${pageContext.request.contextPath}/ui-template3/js/prettyphoto/prettyPhotoaeb9.css?ver=3.1.4' type='text/css' media='all' />
    <link rel="stylesheet" id='main-css-css'  href='${pageContext.request.contextPath}/ui-template3/css/main5152.css?ver=1.0' type='text/css' media='all' />
    <link rel="stylesheet" id='custom-css-css'  href='${pageContext.request.contextPath}/ui-template3/css/custom5152.html?ver=1.0' type='text/css' media='all' />
    <link rel="stylesheet" href='${pageContext.request.contextPath}/layui/css/layui.css' media="all">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="${pageContext.request.contextPath}/ui-template3/js/html5.js"/>
    <![endif]-->


</head>
<body>

<!-- Start of Header -->

<div class="header-wrapper">
    <header>
        <div class="container">


            <div class="logo-container">
                <!-- Website Logo -->
                <a href="index-2.html"  title="Knowledge Base Theme">
                    <img src="${pageContext.request.contextPath}/ui-template3/images/logo.png" alt="Knowledge Base Theme">
                </a>
                <span class="tag-line">Bulletin Board System</span>
            </div>


            <!-- Start of Main Navigation -->
            <nav class="main-nav">
                <div class="menu-top-menu-container">
                    <ul id="menu-top-menu" class="clearfix">
                        <li class="current-menu-item"><a href="index-2.html">Home</a></li>
                        <li><a href="home-categories-description.html">Home 2</a></li>
                        <li><a href="home-categories-articles.html">Home 3</a></li>
                        <li><a href="articles-list.html">Articles List</a></li>
                        <li><a href="faq.html">FAQs</a></li>
                        <li><a href="#">Skins</a>
                            <ul class="sub-menu">
                                <li><a href="blue-skin.html">Blue Skin</a></li>
                                <li><a href="green-skin.html">Green Skin</a></li>
                                <li><a href="red-skin.html">Red Skin</a></li>
                                <li><a href="index-2.html">Default Skin</a></li>
                            </ul>
                        </li>
                        <li><a href="#">More</a>
                            <ul class="sub-menu">
                                <li><a href="full-width.html">Full Width</a></li>
                                <li><a href="elements.html">Elements</a></li>
                                <li><a href="page.html">Sample Page</a></li>
                            </ul>
                        </li>
                        <li><a href="contact.html">Contact</a></li>
                    </ul>
                </div>
            </nav>
            <!-- End of Main Navigation -->

        </div>
    </header>
</div>

<div class="page-container">
    <div class="container">
        <div class="row">
            <div class="span8 main-listing">
                <span style="color: #01AAED ;text-align:center">关键词</span> 查询到结果，如下:(耗时123ms)<br/><br/>
                <span style="text-align: center;color: #01AAED">耗时123ms...</span>
                <hr/>
                <c:forEach items="${articleList}" var="article">
                    <article class="type-post  format-video hentry clearfix">

                        <header class="clearfix">

                            <h3 class="post-title">
                                <a href="single.html">${article.articleTitle}</a>
                            </h3>

                            <div class="post-meta clearfix">
                                <span class="date">${article.createTime}</span>
                                <span class="category"><a href="#" title="View all posts in WordPress Plugins">${article.subareaName}</a></span>

                                <span class="articleComments"><a href="#" title="Comment on Using Video">${article.commentsNum} Comments</a></span>

                                <span class="like-count">${article.likesNum}</span>
                            </div><!-- end of post meta -->

                        </header>
                        <div class="post-video">
                            <div class="video-wrapper">
                                <iframe src="http://player.vimeo.com/video/24535181" width="500" height="281" frameborder="0" webkitallowfullscreen="" mozallowfullscreen="" allowfullscreen=""></iframe>
                            </div>
                        </div>

                        <p>Many of us work in an endless stream of tasks, browser tasks, social media, emails, meetings, rushing from one thing to another, never pausing and never ending.&nbsp;Then the day is over, and we are exhausted, and we often have very little to show for it. And we start the next . . . <a class="readmore-link" href="http://knowledgebase.inspirythemes.com/using-video/">Read more</a></p>

                    </article>
                </c:forEach>
            </div>
        </div>
    </div>
</div>

    <!-- script -->
    <script type='text/javascript' src='${pageContext.request.contextPath}/ui-template3/js/jquery-1.8.3.min.js'></script>
    <script type='text/javascript' src='${pageContext.request.contextPath}/ui-template3/js/jquery.easing.1.3.js'></script>
    <script type='text/javascript' src='${pageContext.request.contextPath}/ui-template3/js/prettyphoto/jquery.prettyPhoto.js'></script>
    <script type='text/javascript' src='${pageContext.request.contextPath}/ui-template3/js/jflickrfeed.js'></script>
    <script type='text/javascript' src='${pageContext.request.contextPath}/ui-template3/js/jquery.liveSearch.js'></script>
    <script type='text/javascript' src='${pageContext.request.contextPath}/ui-template3/js/jquery.form.js'></script>
    <script type='text/javascript' src='${pageContext.request.contextPath}/ui-template3/js/jquery.validate.min.js'></script>
    <script type='text/javascript' src='${pageContext.request.contextPath}/ui-template3/js/custom.js'></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.js"></script>
</body>
</html>
