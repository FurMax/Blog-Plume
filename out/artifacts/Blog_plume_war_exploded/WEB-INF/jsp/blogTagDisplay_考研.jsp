<%--
  Created by IntelliJ IDEA.
  User: Fur
  Date: 2021/9/14
  Time: 0:48
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: Fur
  Date: 2021/9/13
  Time: 20:44
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: Fur
  Date: 2021/8/30
  Time: 21:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Plume - 博客详情页</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ui-template2/assets/css/base-style.css">
    <link rel="icon" type="image/png" href="static/images/logo/logo.png">
    <link href="${pageContext.request.contextPath}/plugins/editor.md/css/editormd.min.css"
          rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/ui-template1/static/css/bootstrap.min.css"
          rel="stylesheet" type="text/css"  />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ui-template2/assets/css/base-style.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ui-template2/assets/css/style.css" />
    <script src="${pageContext.request.contextPath}/ui-template2/assets/js/dark-light.js"></script>
    <%--    <link href="static/blog/css/blog.css" rel="stylesheet" />--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/editor.md/css/editormd.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/editor.md/css/editormd.preview.css" />
    <link href='http://fonts.googleapis.com/css?family=Arizonia' rel='stylesheet' type='text/css' />
</head>
<body class="placeholder">


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
                    <li><a href="#">Home</a>
                        <ul class="dropdown">
                            <li><a href="${pageContext.request.contextPath}/ui-template2/homepage.html">Home</a></li>
                            <li><a href="${pageContext.request.contextPath}/ui-template2/homepage-sidebar.html">Home With Sidebar</a></li>
                            <li><a href="${pageContext.request.contextPath}/ui-template2/homepage-minimal.html">Home Minimal</a></li>
                            <li><a href="${pageContext.request.contextPath}/ui-template2/home-sidebar-minimal.html">Home Minimal Two</a></li>
                        </ul>
                    </li>
                    <li><a href="${pageContext.request.contextPath}/ui-template2/author.html">关于我</a></li>

                    <li><a href="#">知识论坛</a>
                        <ul class="dropdown">
                            <li><a href="${pageContext.request.contextPath}/ui-template2/premium-page.html"> Premium Page</a></li>
                            <li><a href="${pageContext.request.contextPath}/ui-template2/single-author.html">Single Author</a></li>
                            <li><a href="${pageContext.request.contextPath}/ui-template2/style-guide.html">Style Guide</a></li>
                            <li><a href="${pageContext.request.contextPath}/ui-template2/single-blog.html">Single Blog</a></li>
                            <li><a href="${pageContext.request.contextPath}/ui-template2/single-tag.html">Single Tag</a></li>
                            <li><a href="${pageContext.request.contextPath}/ui-template2/single-left-sidebar.html">Single With Left sidebar</a></li>
                            <li><a href="${pageContext.request.contextPath}/ui-template2/single-right-sidebar.html">Single With Right sidebar</a></li>
                        </ul>
                    </li>
                    <li><a href="${pageContext.request.contextPath}/ui-template2/membership.html">友链</a></li>
                    <li><a href="${pageContext.request.contextPath}/ui-template2/tag-page.html">标签</a></li>
                    <li><a href="${pageContext.request.contextPath}/ui-template2/contact.html">联系方式</a></li>
                    <li><a href="${pageContext.request.contextPath}/blog/toInsertBlog">发布博客</a></li>
                    <li><a href="${pageContext.request.contextPath}/user/toMain">返回首页</a></li>
                </ul>
            </div>
            <!-- sign-in area -->
            <div class="sign-in-area">
                <ul class="d-flex align-items-center justify-content-between">
                    <li class="popup"><img src="${pageContext.request.contextPath}/ui-template2/assets/img/svg/search.svg" alt=""></li>
                    <li class="dark-light"><img src="${pageContext.request.contextPath}/ui-template2/assets/img/svg/dark-light.svg" alt=""></li>
                    <li class="sign-click relative">Sign in
                        <!-- sign-in dropdawn -->
                        <div class="sign-in-card">
                            <h3>Welcome back.</h3>
                            <p>Sign in to get personalized story recommendations, ollow authors and topics you love, and interact with stories.</p>
                            <div class="input-group-icon radious-6 mb-30">
                                <input type="email" placeholder="Type your email...">
                                <img src="${pageContext.request.contextPath}/ui-template2/assets/img/svg/mail-sign.svg" alt="">
                            </div>
                            <div class="sign-link">
                                <p>Don't have an account?</p>
                                <a href="#">Sign Up</a>
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
                <input id="search" name="search" type="text" data-list=".data-list" placeholder="Type your keywords...">
            </div>
            <%--     搜索框数据 后期可以考虑改用Lucene全局搜索      --%>
            <div class="data-list-wrapper">
                <ul class="data-list">
                    <li>
                        <a href="">
                            <div class="search-content">
                                <div class="search-title">
                                    <h4>Ingredients to look for in skin care products <span>April 30, 2019</span></h4>
                                </div>
                                <p>Read our top seven health benefits of fishing to learn why, whether you're a match angler or a weekend hobbyist.</p>
                            </div>
                            <img src="${pageContext.request.contextPath}/ui-template2/assets/img/svg/arrow-left.svg" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="search-content">
                                <div class="search-title">
                                    <h4>Sky Parachute Adventure <span>April 25, 2019</span></h4>
                                </div>
                                <p>Muay Thai (Thai boxing) is the most popular contact sport in Thailand, and a pillar of Thai culture, so much so that for years the Thai government has been asking, unsuccessfully, for it to be included as an Olympic sport. </p>
                            </div>
                            <img src="${pageContext.request.contextPath}/ui-template2/assets/img/svg/arrow-left.svg" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="search-content">
                                <div class="search-title">
                                    <h4>Small boy and girl on road<span>April 18, 2019</span></h4>
                                </div>
                                <p>Many parents are tired of the pink and blue divide in the toy aisles. Just last month, the White House held a conference in toys and media, with many toy manufacturers and experts attending. After feedback, Target announced in 2015 that it would get rid of signs labeling toys for boys or for girls</p>
                            </div>
                            <img src="${pageContext.request.contextPath}/ui-template2/assets/img/svg/arrow-left.svg" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="search-content">
                                <div class="search-title">
                                    <h4>Colorful women digital art face<span>April 21, 2019</span></h4>
                                </div>
                                <p>The first thing I do before starting an illustration is to browse through my folder of inspiration. Inside are plenty of sub-folders, containing images of lighting, faces, human figures, clothing, illustrations from my favourite artists, animals, caterpillars, flowers and plenty more besides.</p>
                            </div>
                            <img src="${pageContext.request.contextPath}/ui-template2/assets/img/svg/arrow-left.svg" alt="">
                        </a>
                    </li>

                </ul>
            </div>
        </div>
        <div class="popup-close-icon">
            <img src="${pageContext.request.contextPath}/ui-template2/assets/img/svg/close-icon.svg" alt="">
        </div>
    </div>
</header>
<%--标签展示页面-轮播图区域--%>
<section class="single-tag-banner-area">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-5 col-md-6">
                <div class="single-tag-banner-img">
                    <img src="${pageContext.request.contextPath}/img/TagBg1.jpg" alt="">
                </div>
            </div>
            <div class="col-lg-7 col-md-6">
                <div class="single-tag-banner-content">
                    <h5>${blogsNum} Posts</h5>
                    <h2>#考研</h2>
                    <p>&nbsp;&nbsp;考研是件大事，必须要有个专栏放收集到的资源资料~ </p>
                    <button class="btn btn-sm btn-orange btn-radious-6">Read More</button>
                </div>
            </div>
        </div>
    </div>
</section>

<%--使用forEach标签完成博客展示操作，同主界面。--%>
<div class="single-tag-post-area py-100 py-sm-50 section-bg py-md-50">
    <div class="container">
        <div class="row justify-content-center grid">

            <c:forEach items="${blogList}" var="blog">
                <div class="col-lg-4 col-sm-6 mb-50 mb-sm-25 grid-item">
                    <div class="related-post-card">
                        <div class="related-post-card-img">
                            <img src="${pageContext.request.contextPath}/img/blog-${blog.blogTitle}.jpg" alt="">
                        </div>
                        <div class="related-post-card-content single-tag-card">
                            <div class="rpc-content-timeline d-flex align-items-center justify-content-between">
                                <h4>${blog.blogTitle}</h4>
                                <h5>${blog.createTime}</h5>
                            </div>
                            <div class="rpc-content-title">
                                <h2><a href="${pageContext.request.contextPath}/blog/queryBlogById?blogId=${blog.blogId}">${blog.blogSummary}</a></h2>
                            </div>
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
</div>
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
<footer class="footer-area">
    <div class="footer-top-area">
        <div class="container">
            <div class="footer-top-wrapper d-flex justify-content-between">
                <!--header-logo-->
                <div class="footer-logo-area">
                    <div class="header-logo ">
                        <a href="homepage.html">Blooria</a>
                    </div>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
                    <div class="social-icon pt-40 pt-lg-15">
                        <h4>Follow Us</h4>
                        <ul class="d-flex align-items-center">
                            <li><a href="#"><img src="assets/img/svg/facebook.svg" alt=""></a></li>
                            <li><a href="#"><img src="assets/img/svg/instagram.svg" alt=""></a></li>
                            <li><a href="#"><img src="assets/img/svg/twitter.svg" alt=""></a></li>
                            <li><a href="#"><img src="assets/img/svg/youtube.svg" alt=""></a></li>
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
<script src="${pageContext.request.contextPath}/jquery-1.8.3/jquery.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/ui-template1/static/js/jquery-3.5.1.min.js"></script>
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
</body>
</html>

