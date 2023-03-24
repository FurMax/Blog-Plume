<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Fur
  Date: 2021/8/24
  Time: 20:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="Keywords" content="" >
    <meta name="Description" content="" >
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ui-template2/assets/css/base-style.css">
    <link rel="icon" type="image/png" href="static/images/logo/logo.png">
    <link href="${pageContext.request.contextPath}/plugins/editor.md/css/editormd.min.css"
          rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/ui-template1/static/css/bootstrap.min.css"
          rel="stylesheet" type="text/css"  />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ui-template2/assets/css/base-style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ui-template2/assets/css/style.css">
    <script src="${pageContext.request.contextPath}/ui-template2/assets/js/dark-light.js"></script>
    <%--    <link href="static/blog/css/blog.css" rel="stylesheet" />--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/editor.md/css/editormd.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/editor.md/css/editormd.preview.css" />
    <link href='http://fonts.googleapis.com/css?family=Arizonia' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/semantic-ui/2.2.4/semantic.min.css">

<%--    以下是新加的cdn css/js 文件--%>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
<%--  新版本的bootstrap --%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <title>Plume - 博客详情页</title>
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

<section class="all-stories-area pt-100 pb-50">
    <div class="blog">
        <div class="content" id="layer" align="center">
            <div id="test-editormd-view" style="width: 80%;" >
                <h2 class="card-sub-title">${blog.blogTitle}</h2>
                <h5 class="card-date">作者:${blog.blogMaster}</h5>
                <h5 class="card-date">发表日期:${blog.createTime}</h5>
                <textarea id="append-test" style="display:none;">${blog.blogContent}</textarea>
            </div>
        </div>
    </div>
</section>

<%--评论区部分--%>
<div id="waypoint" class="m-margin- animated fadeIn">
    <div class="ui container m-opacity box-shadow-max">
        <div  class="ui bottom attached segment">
            <!--评论区域列表-->
            <div id="articleComment-container"  class="ui teal segment">


                <div class="ui threaded articleComments" style="max-width: 100%;">
                    <h3 class="ui dividing header">评论区:</h3>
                    <c:forEach items="${articleComments}" var="articleComment">
<%--                        父评论div 可以换成卡片从而美化--%>
                        <div class="articleComment" >
<%--这里也要更改--%>
                            <div class="content">
                                <a class="author" >
                                    <img src="${pageContext.request.contextPath}/img/avatar3.png" name="avatar" >
                                    <span>${articleComment.nickname}</span>
                                </a>
                                <div class="metadata">
                                    <span class="date" >${articleComment.create_time}</span>
                                </div>
                                <div class="text">
                                        ${articleComment.content}
                                </div>
                                <div class="actions">
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <a class="reply" data-commentid="${articleComment.id}" data-commentnickname="${articleComment.nickname}"  onclick="reply(this)">回复</a>
                                </div>
                            </div>
                                <%--                            这边可能会存在问题--%>
<%--  子评论图层div也可以改  --%>
                            <!--子集评论-->
                            <div class="articleComments">
                                <c:forEach items="${articleComment.replyComments}" var="reply">
                                    <div class="articleComment" >
                                        <div class="content">
                                            <a class="author" >
                                                <img src="${pageContext.request.contextPath}/img/avatar4.png" name="avatar" >
                                                <span>${reply.nickname}</span>
                                                &nbsp;<span>@${reply.parentNickname}</span>
                                            </a>
                                            <div class="metadata">
                                                <span class="date">${reply.create_time}</span>
                                            </div>
                                            <div class="text">
                                                    ${reply.content}
                                            </div>
                                            <div class="actions">
                                                <a class="reply" data-commentid="${reply.id}" data-commentnickname="${reply.nickname}"  onclick="reply(this)">回复</a>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>

                        </div>
                    </c:forEach>
                </div>

            </div>

            <div id="articleComment-form" class="ui form">
                <input type="hidden" name="parentComment.id" value="-1">
                <div class="field">
                    <textarea name="content" placeholder="请输入评论信息..."></textarea>
                </div>
                <div class="fields">
                    <div class="field m-mobile-wide m-margin-bottom-small">
                        <div class="ui left icon input">
                            <i class="user icon"></i>
                            <input type="text" name="nickname" placeholder="昵称">
                        </div>
                    </div>
                    <div class="field m-mobile-wide m-margin-bottom-small">
                        <div class="ui left icon input">
                            <i class="mail icon"></i>
                            <input type="text" name="email" placeholder="邮箱" >
                        </div>
                    </div>
                    <%--               评论发布按钮需要和后端控制器去连接。     --%>
                    <div class="field  m-margin-bottom-small m-mobile-wide">
                        <%--                        点击按钮通过ajax传数据给控制器的saveComments方法--%>
                        <button id="commentpost-btn" type="button" class="ui teal button m-mobile-wide" onclick="postData.doSubmitComments();"><i class="edit icon"></i>立即回复</button>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>

<script type="text/javascript"
        src="${pageContext.request.contextPath}/ui-template1/static/js/jquery-3.5.1.min.js"></script>
<%--    <script type="text/javascript"--%>
<%--            src="${pageContext.request.contextPath}/jquery-1.8.3/jquery.js"></script>--%>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.2/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/semantic-ui/2.2.4/semantic.min.js"></script>

<script src="${pageContext.request.contextPath}/plugins/editor.md/lib/marked.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/editor.md/lib/prettify.min.js"></script>

<script src="${pageContext.request.contextPath}/plugins/editor.md/lib/raphael.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/editor.md/lib/underscore.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/editor.md/lib/sequence-diagram.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/editor.md/lib/flowchart.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/editor.md/lib/jquery.flowchart.min.js"></script>

<script src="${pageContext.request.contextPath}/plugins/editor.md/editormd.js"></script>



<%--    <script src="${pageContext.request.contextPath}/ui-template2/assets/js/default-js/jquery-3.3.1.min.js"></script>--%>
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

    var testEditormdView2;
    testEditormdView2 = editormd.markdownToHTML("test-editormd-view", {
        htmlDecode      : "style,script,iframe",  // you can filter tags decode
        emoji           : true,
        taskList        : true,
        toc             : true,
        tex             : true,  // 默认不解析
        flowChart       : true,  // 默认不解析
        sequenceDiagram : true,  // 默认不解析
    });



</script>

<script type="text/javascript">
    //评论表单验证
    $('.ui.form').form({
        fields: {
            title: {
                identifier: 'content',
                rules: [{
                    type: 'empty',
                    prompt: '请输入评论内容'
                }
                ]
            },
            content: {
                identifier: 'nickname',
                rules: [{
                    type: 'empty',
                    prompt: '请输入你的大名'
                }]
            },
            type: {
                identifier: 'email',
                rules: [{
                    type: 'email',
                    prompt: '请填写正确的邮箱地址'
                }]
            }
        }
    });

    var blogId=${blog.blogId};

    var postData={
        doSubmitComments : function () {
            if (postData.doCheckComments()){
                $.ajax({
                    type: "POST",
                    url: '${pageContext.request.contextPath}/comment/saveComments',
                    data: {'parentComment.id':$("[name='parentComment.id']").val(),'nickname':$("[name='nickname']").val(),'email':$("[name='email']").val(),'content':$("[name='content']").val(),'blogId':blogId},
                    dataType:'json',
                    cache:false,
                    success:function (data) {
                        if (data.result==="success"){
                            alert("回复成功！");
                            setTimeout(function(){
                                window.close();
                            },3000);
                        }
                        clearContent();
                    }


                })
            }},

        doCheckComments : function () {
            var boo = $('.ui.form').form('validate form');
            if (boo) {
                console.log('校验成功');
                return true;
            } else {
                console.log('校验失败');
                return false;
            }
        }
    }

    function clearContent() {
        $("[name='nickname']").val('');
        $("[name='email']").val('');
        $("[name='content']").val('');
        $("[name='parentComment.id']").val(-1);
        $("[name='content']").attr("placeholder", "请输入评论信息...");
    }

    function reply(obj) {
        var commentId = $(obj).data('commentid');
        var commentNickname = $(obj).data('commentnickname');
        $("[name='content']").attr("placeholder", "@"+commentNickname).focus();
        $("[name='parentComment.id']").val(commentId);
        window.location.hash = "#articleComment-form";
        // $(window).scrollTop($('#articleComment-form'),500);
    }
</script>



</body>
</html>
