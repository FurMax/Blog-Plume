<%--
  Created by IntelliJ IDEA.
  User: Fur
  Date: 2021/10/10
  Time: 23:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: Fur
  Date: 2021/9/3
  Time: 9:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>儿童图书共享管理系统 - 管理后台</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layuiadmin/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layuiadmin/style/admin.css" media="all">


    <script>
        /^http(s*):\/\//.test(location.href) || alert('请先部署到 localhost 下再访问');
    </script>
</head>
<body class="layui-layout-body">
<div id="LAY_app">
    <div class="layui-layout layui-layout-admin">
        <div class="layui-header">
            <!-- 头部区域 -->
            <ul class="layui-nav layui-layout-left">
                <li class="layui-nav-item layadmin-flexible" lay-unselect>
                    <a href="javascript:;" layadmin-event="flexible" title="侧边伸缩">
                        <i class="layui-icon layui-icon-shrink-right" id="LAY_app_flexible"></i>
                    </a>
                </li>
                <li class="layui-nav-item layui-hide-xs" lay-unselect>
                    <a href="${pageContext.request.contextPath}/user/toMain" target="_blank" title="前台">
                        <i class="layui-icon layui-icon-website"></i>
                    </a>
                </li>
                <li class="layui-nav-item" lay-unselect>
                    <a href="javascript:;" layadmin-event="refresh" title="刷新">
                        <i class="layui-icon layui-icon-refresh-3"></i>
                    </a>
                </li>
                <li class="layui-nav-item layui-hide-xs" lay-unselect>
                    <input type="text" placeholder="搜索..." autocomplete="off" class="layui-input layui-input-search" layadmin-event="serach" lay-action="template/search.html?keywords=">
                </li>
            </ul>
            <ul class="layui-nav layui-layout-right" lay-filter="layadmin-layout-right">

                <li class="layui-nav-item" lay-unselect>
                    <a lay-href="app/message/index.html" layadmin-event="message" lay-text="消息中心">
                        <i class="layui-icon layui-icon-notice"></i>

                        <!-- 如果有新消息，则显示小圆点 -->
                        <span class="layui-badge-dot"></span>
                    </a>
                </li>
                <li class="layui-nav-item layui-hide-xs" lay-unselect>
                    <a href="javascript:;" layadmin-event="theme">
                        <i class="layui-icon layui-icon-theme"></i>
                    </a>
                </li>
                <li class="layui-nav-item layui-hide-xs" lay-unselect>
                    <a href="javascript:;" layadmin-event="note">
                        <i class="layui-icon layui-icon-note"></i>
                    </a>
                </li>
                <li class="layui-nav-item layui-hide-xs" lay-unselect>
                    <a href="javascript:;" layadmin-event="fullscreen">
                        <i class="layui-icon layui-icon-screen-full"></i>
                    </a>
                </li>
                <li class="layui-nav-item" lay-unselect>
                    <a href="javascript:;">
                        <cite>admin</cite>
                    </a>
                    <dl class="layui-nav-child">
                        <dd><a lay-href="${pageContext.request.contextPath}/admin/userInfo?userEmail=${user.userEmail}">基本资料</a></dd>
                        <hr>
                        <dd style="text-align: center;">
                            <form action="${pageContext.request.contextPath}/logout" method="post">
                                <button type="submit" class="layui-btn layui-btn-primary">退出账户</button>
                            </form>
                        </dd>
                    </dl>
                </li>

                <li class="layui-nav-item layui-hide-xs" lay-unselect>
                    <a href="javascript:;" layadmin-event="about"><i class="layui-icon layui-icon-more-vertical"></i></a>
                </li>
                <li class="layui-nav-item layui-show-xs-inline-block layui-hide-sm" lay-unselect>
                    <a href="javascript:;" layadmin-event="more"><i class="layui-icon layui-icon-more-vertical"></i></a>
                </li>
            </ul>
        </div>

        <!-- 侧边菜单 -->
        <div class="layui-side layui-side-menu">
            <div class="layui-side-scroll">
                <div class="layui-logo" lay-href="${pageContext.request.contextPath}/adminWelcomePage.jsp">
                    <span>儿童图书共享管理系统</span>
                </div>

                <ul class="layui-nav layui-nav-tree" lay-shrink="all" id="LAY-system-side-menu" lay-filter="layadmin-system-side-menu">

                    <li data-name="senior" class="layui-nav-item">
                        <a href="javascript:;" lay-tips="电影" lay-direction="2">
                            <i class="layui-icon layui-icon-senior"></i>
                            <cite>首页</cite>
                        </a>
                        <dl class="layui-nav-child">
                            <dd>
                                <a lay-href="${pageContext.request.contextPath}/admin/blogList">权限管理</a>
                            </dd>
                            <dd>
                                <a lay-href="${pageContext.request.contextPath}/admin/userList">更改用户</a>
                            </dd>
                        </dl>
                    </li>
                    <li data-name="user" class="layui-nav-item">
                        <a href="javascript:;" lay-tips="用户" lay-direction="2">
                            <i class="layui-icon layui-icon-user"></i>
                            <cite>我的订单</cite>
                        </a>
                        <dl class="layui-nav-child">
                            <dd>
                                <a lay-href="${pageContext.request.contextPath}/userlistUI.jsp">新增书籍</a>
                            </dd>
                            <dd>
                                <a lay-href="${pageContext.request.contextPath}/userlistUI.jsp">管理书籍</a>
                            </dd>
                        </dl>
                    </li>

                    <li data-name="user" class="layui-nav-item">
                        <a href="javascript:;" lay-tips="用户" lay-direction="3">
                            <i class="layui-icon layui-icon-user"></i>
                            <cite>我的好友</cite>
                        </a>
                        <dl class="layui-nav-child">
                            <dd>
                                <a lay-href="${pageContext.request.contextPath}/userlistUI.jsp">新增书籍分类</a>
                            </dd>
                            <dd>
                                <a lay-href="${pageContext.request.contextPath}/userlistUI.jsp">管理书籍分类</a>
                            </dd>
                        </dl>
                    </li>

                    <li data-name="user" class="layui-nav-item">
                        <a href="javascript:;" lay-tips="用户" lay-direction="4">
                            <i class="layui-icon layui-icon-user"></i>
                            <cite>阅读社区</cite>
                        </a>
                        <dl class="layui-nav-child">
                            <dd>
                                <a lay-href="${pageContext.request.contextPath}/userlistUI.jsp">管理借阅信息</a>
                            </dd>
                        </dl>
                    </li>

                    <li data-name="user" class="layui-nav-item">
                        <a href="javascript:;" lay-tips="用户" lay-direction="4">
                            <i class="layui-icon layui-icon-user"></i>
                            <cite>我的信息</cite>
                        </a>
                        <dl class="layui-nav-child">
                            <dd>
                                <a lay-href="${pageContext.request.contextPath}/userlistUI.jsp">管理借阅信息</a>
                            </dd>
                        </dl>
                    </li>



                    <li data-name="get" class="layui-nav-item">
                        <a href="javascript:;" layadmin-event="about" lay-tips="授权" lay-direction="2">
                            <i class="layui-icon layui-icon-auz"></i>
                            <cite>关于</cite>
                        </a>
                    </li>
                </ul>
            </div>
        </div>

        <!-- 页面标签 -->
        <div class="layadmin-pagetabs" id="LAY_app_tabs">
            <div class="layui-icon layadmin-tabs-control layui-icon-prev" layadmin-event="leftPage"></div>
            <div class="layui-icon layadmin-tabs-control layui-icon-next" layadmin-event="rightPage"></div>
            <div class="layui-icon layadmin-tabs-control layui-icon-down">
                <ul class="layui-nav layadmin-tabs-select" lay-filter="layadmin-pagetabs-nav">
                    <li class="layui-nav-item" lay-unselect>
                        <a href="javascript:;"></a>
                        <dl class="layui-nav-child layui-anim-fadein">
                            <dd layadmin-event="closeThisTabs"><a href="javascript:;">关闭当前标签页</a></dd>
                            <dd layadmin-event="closeOtherTabs"><a href="javascript:;">关闭其它标签页</a></dd>
                            <dd layadmin-event="closeAllTabs"><a href="javascript:;">关闭全部标签页</a></dd>
                        </dl>
                    </li>
                </ul>
            </div>
            <div class="layui-tab" lay-unauto lay-allowClose="true" lay-filter="layadmin-layout-tabs">
                <ul class="layui-tab-title" id="LAY_app_tabsheader">
                    <li lay-id="${pageContext.request.contextPath}/admin/toAdminWelcomePage" lay-attr="${pageContext.request.contextPath}/admin/toAdminWelcomePage" class="layui-this"><i class="layui-icon layui-icon-home"></i></li>                </ul>
            </div>
        </div>


        <!-- 主体内容 -->
        <div class="layui-body" id="LAY_app_body">
            <div class="layadmin-tabsbody-item layui-show">
                <iframe src="${pageContext.request.contextPath}/admin/toAdminWelcomePage" frameborder="0" class="layadmin-iframe"></iframe>            </div>
        </div>

        <!-- 辅助元素，一般用于移动设备下遮罩 -->
        <div class="layadmin-body-shade" layadmin-event="shade"></div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/layuiadmin/layui/layui.js"></script>
<script>
    layui.config({
        base: '${pageContext.request.contextPath}/layuiadmin/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use('index');
</script>

<!-- 百度统计 -->
<script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?d214947968792b839fd669a4decaaffc";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
</body>
</html>
