<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en-US"> <![endif]-->
<!--[if IE 7]>    <html class="lt-ie9 lt-ie8" lang="en-US"> <![endif]-->
<!--[if IE 8]>    <html class="lt-ie9" lang="en-US"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en-US"> <!--<![endif]-->
<head>
    <!-- META TAGS -->
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Plume - 知识社区</title>

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
<!-- End of Header -->

<!-- Start of Search Wrapper -->
<div class="search-area-wrapper">
    <div class="search-area container">
        <h3 class="search-header">Have a Question?</h3>
        <p class="search-tag-line">If you have any question you can ask below or enter what you are looking for!</p>

        <form id="search-form" class="search-form clearfix" method="get" action="#" autocomplete="off">
            <input class="search-term required" type="text" id="s" name="s" placeholder="Type your search terms here" title="* Please enter a search term!" />
            <input class="search-btn" type="submit" value="Search" />
            <div id="search-error-container"></div>
        </form>
    </div>
</div>
<!-- End of Search Wrapper -->
<div class="copyrights">Collect from <a href="http://www.cssmoban.com/" title="模板之家">模板之家</a></div>



<!-- Start of Page Container -->
<div class="page-container">
    <div class="container">
        <div class="row">

            <!-- start of page content -->
            <div class="layui-tab">
                <ul class="layui-tab-title">
                    <li class="layui-this">最热</li>
                    <li>最新</li>
                </ul>
                <div class="layui-tab-content">
                    <div class="layui-tab-item layui-show">
                        <div class="span8 main-listing">
                            <c:forEach var="mostHotArticle" items="${mostLikeArticleList}">
                                <article class="format-standard type-post hentry clearfix">

                                    <header class="clearfix">

                                        <h3 class="post-title">
                                            <a href="single.html">${mostHotArticle.articleTitle}</a>
                                        </h3>

                                        <div class="post-meta clearfix">
                                            <span class="date">${mostHotArticle.createTime}</span>
                                            <span class="category"><a href="#" title="View all posts in Server &amp; Database">${mostHotArticle.subareaName}</a></span>
                                            <span class="articleComments"><a href="#" title="Comment on Integrating WordPress with Your Website">${mostHotArticle.commentsNum} Comments</a></span>
                                            <span class="like-count">${mostHotArticle.likesNum}</span>
                                        </div><!-- end of post meta -->

                                    </header>

                                    <p> &nbsp;&nbsp;${mostHotArticle.articleSummary} . . . <a class="readmore-link" href="http://knowledgebase.inspirythemes.com/integrating-wordpress-with-your-website/">Read more</a></p>

                                </article>
                            </c:forEach>


                        </div>
                    </div>
                    <div class="layui-tab-item">
                        <div class="span8 main-listing">

                            <c:forEach var="latestArticle" items="${latestArticleList}">
                                <article class="format-standard type-post hentry clearfix">

                                    <header class="clearfix">

                                        <h3 class="post-title">
                                            <a href="single.html">${latestArticle.articleTitle}</a>
                                        </h3>

                                        <div class="post-meta clearfix">
                                            <span class="date">${latestArticle.createTime}</span>
                                            <span class="category"><a href="#" title="View all posts in Server &amp; Database">${latestArticle.subareaName}</a></span>
                                            <span class="articleComments"><a href="#" title="Comment on Integrating WordPress with Your Website">${latestArticle.commentsNum} Comments</a></span>
                                            <span class="like-count">${latestArticle.likesNum}</span>
                                        </div><!-- end of post meta -->

                                    </header>

                                    <p>&nbsp;&nbsp;${latestArticle.articleSummary} . . . <a class="readmore-link" href="http://knowledgebase.inspirythemes.com/integrating-wordpress-with-your-website/">Read more</a></p>

                                </article>
                            </c:forEach>

                            <%--                            <div id="pagination">--%>
                            <%--                                <a href="#" class="btn active">1</a>--%>
                            <%--                                <a href="#" class="btn">2</a>--%>
                            <%--                                <a href="#" class="btn">3</a>--%>
                            <%--                                <a href="#" class="btn">Next »</a>--%>
                            <%--                                <a href="#" class="btn">Last »</a>--%>
                            <%--                            </div>--%>

                        </div>
                    </div>
                </div>
            </div>

            <!-- start of sidebar -->
            <aside class="span4 page-sidebar">

                <section class="widget">
                    <div class="support-widget">
                        <h3 class="title">Support</h3>
                        <p class="intro">Need more support? If you did not found an answer, contact us for further help.</p>
                    </div>
                </section>

                <section class="widget">
                    <div class="quick-links-widget">
                        <h3 class="title">Quick Links</h3>
                        <ul id="menu-quick-links" class="menu clearfix">
                            <li><a href="index-2.html">Home</a></li>
                            <li><a href="articles-list.html">Articles List</a></li>
                            <li><a href="faq.html">FAQs</a></li>
                            <li><a href="contact.html">Contact</a></li>
                        </ul>
                    </div>
                </section>

                <section class="widget">
                    <h3 class="title">Tags</h3>
                    <div class="tagcloud">
                        <a href="#" class="btn btn-mini">basic</a>
                        <a href="#" class="btn btn-mini">beginner</a>
                        <a href="#" class="btn btn-mini">blogging</a>
                        <a href="#" class="btn btn-mini">colour</a>
                        <a href="#" class="btn btn-mini">css</a>
                        <a href="#" class="btn btn-mini">date</a>
                        <a href="#" class="btn btn-mini">design</a>
                        <a href="#" class="btn btn-mini">files</a>
                        <a href="#" class="btn btn-mini">format</a>
                        <a href="#" class="btn btn-mini">header</a>
                        <a href="#" class="btn btn-mini">images</a>
                        <a href="#" class="btn btn-mini">plugins</a>
                        <a href="#" class="btn btn-mini">setting</a>
                        <a href="#" class="btn btn-mini">templates</a>
                        <a href="#" class="btn btn-mini">theme</a>
                        <a href="#" class="btn btn-mini">time</a>
                        <a href="#" class="btn btn-mini">videos</a>
                        <a href="#" class="btn btn-mini">website</a>
                        <a href="#" class="btn btn-mini">wordpress</a>
                    </div>
                </section>

            </aside>
            <!-- end of sidebar -->
        </div>
    </div>
</div>
<!-- End of Page Container -->

<!-- Start of Footer -->
<footer id="footer-wrapper">
    <div id="footer" class="container">
        <div class="row">

            <div class="span3">
                <section class="widget">
                    <h3 class="title">How it works</h3>
                    <div class="textwidget">
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </p>
                        <p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. </p>
                    </div>
                </section>
            </div>

            <div class="span3">
                <section class="widget"><h3 class="title">Categories</h3>
                    <ul>
                        <li><a href="#" title="Lorem ipsum dolor sit amet,">Advanced Techniques</a> </li>
                        <li><a href="#" title="Lorem ipsum dolor sit amet,">Designing in WordPress</a></li>
                        <li><a href="#" title="Lorem ipsum dolor sit amet,">Server &amp; Database</a></li>
                        <li><a href="#" title="Lorem ipsum dolor sit amet, ">Theme Development</a></li>
                        <li><a href="#" title="Lorem ipsum dolor sit amet,">Website Dev</a></li>
                        <li><a href="#" title="Lorem ipsum dolor sit amet,">WordPress for Beginners</a></li>
                        <li><a href="#" title="Lorem ipsum dolor sit amet, ">WordPress Plugins</a></li>
                    </ul>
                </section>
            </div>

            <div class="span3">
                <section class="widget">
                    <h3 class="title">Latest Tweets</h3>
                    <div id="twitter_update_list">
                        <ul>
                            <li>No Tweets loaded !</li>
                        </ul>
                    </div>

                </section>
            </div>

            <div class="span3">
                <section class="widget">
                    <h3 class="title">Flickr Photos</h3>
                    <div class="flickr-photos" id="basicuse">
                    </div>
                </section>
            </div>

        </div>
    </div>
    <!-- end of #footer -->

    <!-- Footer Bottom -->
    <div id="footer-bottom-wrapper">
        <div id="footer-bottom" class="container">
            <div class="row">
                <div class="span6">
                    <p class="copyright">
                        Copyright © 2013. All Rights Reserved by KnowledgeBase.Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
                    </p>
                </div>
                <div class="span6">
                    <!-- Social Navigation -->
                    <ul class="social-nav clearfix">
                        <li class="linkedin"><a target="_blank" href="#"></a></li>
                        <li class="stumble"><a target="_blank" href="#"></a></li>
                        <li class="google"><a target="_blank" href="#"></a></li>
                        <li class="deviantart"><a target="_blank" href="#"></a></li>
                        <li class="flickr"><a target="_blank" href="#"></a></li>
                        <li class="skype"><a target="_blank" href="skype:#?call"></a></li>
                        <li class="rss"><a target="_blank" href="#"></a></li>
                        <li class="twitter"><a target="_blank" href="#"></a></li>
                        <li class="facebook"><a target="_blank" href="#"></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End of Footer Bottom -->

</footer>
<!-- End of Footer -->

<a href="#top" id="scroll-top"></a>

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

<script>
    layui.use('element', function(){
        var $ = layui.jquery
            ,element = layui.element; //Tab的切换功能，切换事件监听等，需要依赖element模块

        //触发事件
        var active = {
            tabAdd: function(){
                //新增一个Tab项
                element.tabAdd('demo', {
                    title: '新选项'+ (Math.random()*1000|0) //用于演示
                    ,content: '内容'+ (Math.random()*1000|0)
                    ,id: new Date().getTime() //实际使用一般是规定好的id，这里以时间戳模拟下
                })
            }
            ,tabDelete: function(othis){
                //删除指定Tab项
                element.tabDelete('demo', '44'); //删除：“商品管理”


                othis.addClass('layui-btn-disabled');
            }
            ,tabChange: function(){
                //切换到指定Tab项
                element.tabChange('demo', '22'); //切换到：用户管理
            }
        };

        $('.site-demo-active').on('click', function(){
            var othis = $(this), type = othis.data('type');
            active[type] ? active[type].call(this, othis) : '';
        });

        //Hash地址的定位
        var layid = location.hash.replace(/^#test=/, '');
        element.tabChange('test', layid);

        element.on('tab(test)', function(elem){
            location.hash = 'test='+ $(this).attr('lay-id');
        });

    });
</script>

<style>
    .copyrights{text-indent:-9999px;height:0;line-height:0;font-size:0;overflow:hidden;}
</style>
<div class="copyrights" id="links20210126">
    Collect from <a href="http://www.cssmoban.com/"  title="网站模板">模板之家</a>
    <a href="https://www.chazidian.com/"  title="查字典">查字典</a>
</div>
</body>
</html>