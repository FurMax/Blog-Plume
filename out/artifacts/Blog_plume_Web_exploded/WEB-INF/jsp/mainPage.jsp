
<%--明天计划：将主界面需要的博客controller、Service弄好--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" data-theme="light">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Blooria</title>
    <link rel="icon" href="assets/img/favicon.ico" type="image/gif" sizes="16x16">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ui-template2/assets/css/base-style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ui-template2/assets/css/style.css">
    <script src="${pageContext.request.contextPath}/ui-template2/assets/js/dark-light.js"></script>
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
                <a href="${pageContext.request.contextPath}/ui-template2/homepage.html">Plume-Blog</a>
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
                    <li><a href="${pageContext.request.contextPath}/ui-template2/author.html">Authors</a></li>
                    <li><a href="#">Shop</a>
                        <ul class="dropdown">
                            <li><a href="${pageContext.request.contextPath}/ui-template2/shop-page.html">Product</a></li>
                            <li><a href="${pageContext.request.contextPath}/ui-template2/product-details.html">Product Details</a></li>
                            <li><a href="${pageContext.request.contextPath}/ui-template2/card.html">Cart</a></li>
                            <li><a href="${pageContext.request.contextPath}/ui-template2/checkout.html">Checkout</a></li>
                            <li><a href="${pageContext.request.contextPath}/ui-template2/account-two.html">Account</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Pages</a>
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
                    <li><a href="${pageContext.request.contextPath}/ui-template2/membership.html">Membership</a></li>
                    <li><a href="${pageContext.request.contextPath}/ui-template2/tag-page.html">Tag</a></li>
                    <li><a href="${pageContext.request.contextPath}/ui-template2/contact.html">Contact</a></li>
                    <li><a href="${pageContext.request.contextPath}/ui-template2/account-page.html">Account</a></li>
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
                           <img src="${pageContext.request.contextPath}./ui-template2/assets/img/svg/arrow-left.svg" alt="">
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
<!-- banner area start from here -->
<section class="banner-area">
    <div class="container">
        <div class="banner-owl-area owl-carousel" data-carousel-loop="true" data-carousel-autoplay="false" data-carousel-mousedrag="true" data-carousel-items="1" data-carousel-nav="false">
            <div class="banner-single-wrapper">
                <div class="banner-img-area">
                    <h4>featured stories</h4>
                    <div class="banner-img">
                        <img src="${pageContext.request.contextPath}/ui-template2/assets/img/homepage/banner-image.jpg" alt="">
                    </div>
                </div>
                <div class="banner-content-area">
                    <h5>Travel</h5>
                    <h1><a href="#">You got to cool that off. and hat's the double-truth</a></h1>
                    <h4 class="date"><span>29.Nov.2018</span> -Eiad Basha</h4>
                    <p>Hung that found of the from diesel to the venerable, you what you spare at cleaning in coming was sign introduced attempt, then would was try make brown on small careful cheek, and spirits build needed room so times from </p>
                    <button class="btn btn-sm btn-radious-6 btn-black">Read More</button>
                </div>
            </div>
            <div class="banner-single-wrapper">
                <div class="banner-img-area">
                    <h4>featured stories</h4>
                    <div class="banner-img">
                        <img src="${pageContext.request.contextPath}/ui-template2/assets/img/homepage/banner-image2.jpg" alt="">
                    </div>
                </div>
                <div class="banner-content-area">
                    <h5>Travel</h5>
                    <h1><a href="#">A muscial gift on bangla noboborsha from Armeen Musa</a></h1>
                    <h4 class="date"><span>20.Nov.2019</span> -Written by Eiad Basha</h4>
                    <p>Hung that found of the from diesel to the venerable, you what you spare at cleaning in coming was sign introduced attempt, then would was try make brown on small careful cheek, and spirits build needed room so times from </p>
                    <button class="btn btn-sm btn-radious-6 btn-black">Read More</button>
                </div>
            </div>
            <div class="banner-single-wrapper">
                <div class="banner-img-area">
                    <h4>featured stories</h4>
                    <div class="banner-img">
                        <img src="${pageContext.request.contextPath}/ui-template2/assets/img/homepage/banner-image3.jpg" alt="">
                    </div>
                </div>
                <div class="banner-content-area">
                    <h5>Travel</h5>
                    <h1><a href="#">You got to cool that off. and hat's the double-truth</a></h1>
                    <h4 class="date"><span>29.Nov.2018</span> -Written by Eiad Basha</h4>
                    <p>Hung that found of the from diesel to the venerable, you what you spare at cleaning in coming was sign introduced attempt, then would was try make brown on small careful cheek, and spirits build needed room so times from </p>
                    <button class="btn btn-sm btn-radious-6 btn-black">Read More</button>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- all stories section start here -->
<section class="all-stories-area pt-100 pb-50">
    <div class="section-heading text-center">
        <h2>All Stories</h2>
    </div>
    <div class="container">
        <div class="row grid">
            <div class="col-sm-6 col-lg-4 mb-30 grid-item">
                <div class="single-stories-card">
                    <div class="stories-card-img">
                        <img src="${pageContext.request.contextPath}/ui-template2/assets/img/homepage/stories-img1.jpg" alt="">
                    </div>
                    <div class="stories-card-content">
                        <div class="sub-title-wrapper">
                            <h4 class="card-sub-title">Beauty</h4>
                            <h5 class="card-date">Apr 30, 2019</h5>
                        </div>
                       <h4 class="card-title"><a href="${pageContext.request.contextPath}/ui-template2/single-blog.html">Ingredients to look for in skin care products</a></h4>
                    </div>
                </div>
            </div>

<%--                        <div class="col-sm-6 col-lg-4 mb-30 grid-item">--%>
<%--                            <div class="single-stories-card-content">--%>
<%--                                <a href="${pageContext.request.contextPath}/blog/queryAll"></a>--%>
<%--                                <jsp:useBean id="blogList" scope="application" type="java.util.List"/>--%>
<%--                                <c:forEach items="${blogList}" var="blog">--%>
<%--                                    <div class="stories-card-img">--%>
<%--                                        <img src="${pageContext.request.contextPath}/ui-template2/${blog.blogCover}">--%>
<%--                                    </div>--%>
<%--                                    <div class="stories-card-content">--%>
<%--                                        <div class="sub-title-wrapper">--%>
<%--                                            <h4 class="card-sub-title">${blog.blogTitle}</h4>--%>
<%--                                            <h5 class="card-date">${blog.createTime}</h5>--%>
<%--                                        </div>--%>
<%--                                        <h4 class="card-title"><a href="${blog.blogDetailUrl}">${blog.blogSummary}</a></h4>--%>
<%--                                    </div>--%>
<%--                                </c:forEach>--%>
<%--                            </div>--%>
<%--                        </div>--%>
            <div class="col-sm-6 col-lg-4 mb-30 grid-item">
                <div class="single-stories-card">
                    <div class="stories-card-img">
                        <img src="${pageContext.request.contextPath}/ui-template2/assets/img/homepage/stories-img2.jpg" alt="">
                        <a href="#" class="card-img-title">Member</a>
                    </div>
                    <div class="stories-card-content">
                        <div class="sub-title-wrapper">
                            <h4 class="card-sub-title">Cooking</h4>
                            <h5 class="card-date">Apr 30, 2019</h5>
                        </div>
                        <h4 class="card-title"><a href="${pageContext.request.contextPath}/ui-template2/single-blog.html">Cooking recipes anytime and anywhere</a></h4>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-lg-4 mb-30 grid-item">
                <div class="single-stories-card-content">
                    <div class="sub-title-wrapper">
                        <h4 class="card-sub-title">Technology</h4>
                        <h5 class="card-date">Apr 30, 2019</h5>
                    </div>
                    <h4 class="card-title"><a href="../../ui-template2/single-blog.html">video games playing with imagination</a></h4>
                    <p class="card-content">Glanced was, frequency, this tower, writers, a of its in of by the subdued titles extended.</p>
                </div>
            </div>
            <div class="col-sm-6 col-lg-4 mb-30 grid-item">
                <div class="single-stories-card">
                    <div class="stories-card-img">
                        <img src="${pageContext.request.contextPath}/ui-template2/assets/img/homepage/stories-img3.jpg" alt="">
                        <a href="#" class="card-img-title">Premium</a>
                    </div>
                    <div class="stories-card-content">
                        <div class="sub-title-wrapper">
                            <h4 class="card-sub-title">Travel</h4>
                            <h5 class="card-date">Apr 30, 2019</h5>
                        </div>
                         <h4 class="card-title"><a href="${pageContext.request.contextPath}/ui-template2/single-blog.html">Travel prudently luggage and carry on worries</a></h4>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-lg-4 mb-30 grid-item">
                <div class="single-stories-card-content">
                    <div class="sub-title-wrapper">
                        <h4 class="card-sub-title">Philosophy</h4>
                        <h5 class="card-date">Apr 30, 2019</h5>
                    </div>
                    <h4 class="card-title"><a href="${pageContext.request.contextPath}/ui-template2/single-blog.html">Dream interpretation common symbols and their meanings</a></h4>
                    <p class="card-content">Glanced was, frequency, this tower, writers, a of its in of by the subdued titles extended.</p>
                </div>
            </div>
            <div class="col-sm-6 col-lg-4 mb-30 grid-item">
                <div class="single-stories-card">
                    <div class="stories-card-img">
                        <img src="${pageContext.request.contextPath}/ui-template2/assets/img/homepage/stories-img4.jpg" alt="">
                    </div>
                    <div class="stories-card-content">
                        <div class="sub-title-wrapper">
                            <h4 class="card-sub-title">Education</h4>
                            <h5 class="card-date">Apr 30, 2019</h5>
                        </div>
                         <h4 class="card-title"><a href="${pageContext.request.contextPath}/ui-template2/single-blog.html">It would be totally painless - they just slip into unconsciousness</a></h4>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-lg-4 mb-md-30 grid-item">
                <div class="single-stories-card">
                    <div class="stories-card-img">
                        <img src="${pageContext.request.contextPath}/ui-template2/assets/img/homepage/stories-img5.jpg" alt="">
                    </div>
                    <div class="stories-card-content">
                        <div class="sub-title-wrapper">
                            <h4 class="card-sub-title">lifestyle</h4>
                            <h5 class="card-date">Apr 30, 2019</h5>
                        </div>
                        <h4 class="card-title"><a href="${pageContext.request.contextPath}/ui-template2/single-blog.html">The reason we're gathered here on God-given, much-needed day</a></h4>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-lg-4 mb-xs-30 grid-item">
                <div class="single-stories-card">
                    <div class="stories-card-img">
                        <img src="${pageContext.request.contextPath}/ui-template2/assets/img/homepage/stories-img6.jpg" alt="">
                        <a href="#" class="card-img-title">Free</a>
                    </div>
                    <div class="stories-card-content">
                        <div class="sub-title-wrapper">
                            <h4 class="card-sub-title">cooking</h4>
                            <h5 class="card-date">Apr 30, 2019</h5>
                        </div>
                        <h4 class="card-title"><a href="${pageContext.request.contextPath}/ui-template2/single-blog.html">Why Do make ahead recipes work so well to reduce your dinner.</a></h4>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-lg-4 grid-item">
                <div class="single-stories-card">
                    <div class="stories-card-img">
                        <img src="${pageContext.request.contextPath}/ui-template2/assets/img/homepage/stories-img7.jpg" alt="">
                    </div>
                    <div class="stories-card-content">
                        <div class="sub-title-wrapper">
                            <h4 class="card-sub-title">Culture</h4>
                            <h5 class="card-date">Apr 30, 2019</h5>
                        </div>
                         <h4 class="card-title"><a href="${pageContext.request.contextPath}/ui-template2/single-blog.html">Winged evening Green Him together good together</a></h4>
                    </div>
                </div>
            </div>
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
                        <h2>#Sports</h2>
                    </div>
                    <div class="side-card-wrapper">
                        <div class="side-img-card-wrapper mb-30 mb-md-0  mb-xs-30">
                            <div class="side-card-img">
                                <img src="${pageContext.request.contextPath}/ui-template2/assets/img/homepage/single-blog-img1.jpg" alt="">
                            </div>
                            <div class="side-card-content">
                                <h4 class="card-title"><a href="${pageContext.request.contextPath}/ui-template2/premium-page.html">After sports were canceled, only the iditarod remained</a></h4>
                                <p class="card-content">A than in to so even of my times is front better on because the plans. The is perhaps for his own to was that that's it's less.</p>
                            </div>
                        </div>
                        <div class="side-img-card-wrapper">
                            <div class="side-card-img">
                                <img src="${pageContext.request.contextPath}/ui-template2/assets/img/homepage/single-blog-img3.jpg" alt="">
                            </div>
                            <div class="side-card-content">
                                 <h4 class="card-title"><a href=".${pageContext.request.contextPath}/ui-template2/premium-page.html">The biggest kansas jayhaw NBA draft busts of all time</a></h4>
                                <p class="card-content">A than in to so even of my times is front better on because the plans. The is perhaps for his own to was that that's it's less.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="sports-blog-card">
                    <div class="section-heading">
                        <h2>#Food</h2>
                    </div>
                    <div class="side-card-wrapper">
                        <div class="side-img-card-wrapper mb-30 mb-md-0 mb-xs-30">
                            <div class="side-card-img">
                                <img src="${pageContext.request.contextPath}/ui-template2/assets/img/homepage/single-blog-img2.jpg" alt="">
                            </div>
                            <div class="side-card-content">
                                <h4 class="card-title"><a href="${pageContext.request.contextPath}/ui-template2/premium-page.html">How to Make a Perfect Pot of French Press Coffee.</a></h4>
                                <p class="card-content">A than in to so even of my times is front better on because the plans. The is perhaps for his own to was that that's it's less.</p>
                            </div>
                        </div>
                        <div class="side-img-card-wrapper">
                            <div class="side-card-img">
                                <img src="${pageContext.request.contextPath}/ui-template2/assets/img/homepage/single-blog-img4.jpg" alt="">
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
                    <a href="../../ui-template2/single-tag.html" class="popular-single-tag-wrapper" style="background-image:url(${pageContext.request.contextPath}/ui-template2/assets/img/homepage/tag-img1.jpg)">
                        <div class="tag-title">#Lifestyle</div>
                        <div class="tag-card">2</div>
                    </a>
                </div>
                <div class="col-lg-4 col-md-6 mb-30">
                    <a href="../../ui-template2/single-tag.html" class="popular-single-tag-wrapper" style="background-image:url(${pageContext.request.contextPath}/ui-template2/assets/img/homepage/tag-img2.jpg)">
                        <div class="tag-title">#Cooking</div>
                        <div class="tag-card">3</div>
                    </a>
                </div>
                <div class="col-lg-4 col-md-6 mb-30">
                    <a href="../../ui-template2/single-tag.html" class="popular-single-tag-wrapper" style="background-image:url(${pageContext.request.contextPath}/ui-template2/assets/img/homepage/tag-img3.jpg)">
                        <div class="tag-title">#Education</div>
                        <div class="tag-card">2</div>
                    </a>
                </div>
                <div class="col-lg-4 col-md-6 mb-lg-30"> 
                    <a href="../../ui-template2/single-tag.html" class="popular-single-tag-wrapper " style="background-image:url(${pageContext.request.contextPath}/ui-template2/assets/img/homepage/tag-img4.jpg)">
                        <div class="tag-title">#Travel</div>
                        <div class="tag-card">4</div>
                    </a>
                </div>
                <div class="col-lg-4 col-md-6 mb-md-30">
                    <a href="../../ui-template2/single-tag.html" class="popular-single-tag-wrapper" style="background-image:url(${pageContext.request.contextPath}/ui-template2/assets/img/homepage/tag-img1.jpg)">
                        <div class="tag-title">#Lifestyle</div>
                        <div class="tag-card">2</div>
                    </a>
                </div>
                <div class="col-lg-4 col-md-6">
                    <a href="../../ui-template2/single-tag.html" class="popular-single-tag-wrapper" style="background-image:url(${pageContext.request.contextPath}/ui-template2/assets/img/homepage/tag-img2.jpg)">
                        <div class="tag-title">#Cooking</div>
                        <div class="tag-card">3</div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>
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
                        <a href="${pageContext.request.contextPath}/ui-template2/homepage.html">Blooria</a>
                    </div>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
                    <div class="social-icon pt-40 pt-lg-15">
                        <h4>Follow Us</h4>
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
</body>
</html>