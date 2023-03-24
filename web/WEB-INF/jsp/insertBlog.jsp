<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Plume·Blog 写博客</title>
    <link rel="icon" type="image/png" href="static/images/logo/logo.png">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ui-template2/assets/css/base-style.css">

    <link href="${pageContext.request.contextPath}/plugins/editor.md/css/editormd.min.css"
          rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/ui-template1/static/css/bootstrap.min.css"
          rel="stylesheet" type="text/css"  />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ui-template2/assets/css/base-style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ui-template2/assets/css/style.css">
    <script src="${pageContext.request.contextPath}/ui-template2/assets/js/dark-light.js"></script>
    <style type="text/css">
        #articleTitle{
            width: 68%;
            margin-top:15px;
        }
        #articleSummary{
            width: 65%;
            margin-top: 15px;
        }
        #articleCategory{
            margin-top:15px;
            width:10%;
        }
        #btnList {
            position:relative;
            float:right;
            margin-top:15px;
            padding-right:70px;
        }


    </style>
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
<div id="layout">
    <header>
        <div class="col-lg-12">
            <div class="form-group">
                <label class="">标题：</label>
                <input type="text"  id="articleTitle" class="form-control" placeholder="请输入标题~" >
            </div>
        </div>

        <div class="col-lg-12">
            <div class="form-group">
                <label class="">摘要：</label>
                <input type="text"  id="articleSummary" class="form-control" placeholder="请输入摘要~" >
            </div>
        </div>

        <div class="col-lg-12">
                <label class="">请选择所属标签 :</label>
                <select id="articleCategory"></select>
        </div>


<%--        &nbsp;&nbsp;&nbsp;&nbsp;博客标题：<input type="text" id="articleTitle" /> <br/>--%>
<%--        &nbsp;&nbsp;&nbsp;&nbsp;博客摘要: <input type="text" id="articleSummary"/>--%>
<%--        选择博客类别：--%>
<%--        <select id="articleCategory"></select>--%>
        <span id="btnList">
				<button type="button" id="publishArticle" onclick="writeArticle.doSubmit();" class="btn btn-info">发布</button>
        </span>
        <br/>
        <br/>
    </header>
    <br/>
    <div class="col-lg-12">
        <label>PS:快开始编辑吧 !</label>
    </div>
    <div id="test-editormd">
			<textarea id="articleContent" style="display: none;">

</textarea>
    </div>
</div>
</section>


<script type="text/javascript"
        src="${pageContext.request.contextPath}/jquery-1.8.3/jquery.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/plugins/editor.md/editormd.min.js"></script>
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
<script type="text/javascript">
    var testEditor;

    $(function() {
        testEditor = editormd("test-editormd", {
            placeholder:'本编辑器支持Markdown编辑，左边编写，右边预览',
            width   : "90%",
            codeFold : true,
            height  : 640,
            syncScrolling : "single",
            path    : "${pageContext.request.contextPath}/plugins/editor.md/lib/",
            saveHTMLToTextarea: true,
            emoji:true,
            tocm:true,
            imageUpload: true,
            imageFormats: ["jpg", "jpeg", "gif", "png", "bmp", "webp"],
            imageUploadURL: "${pageContext.request.contextPath}/blog/imgUpload",
            onload : function () {
                initPasteDragImg(this);
            }
        });


        categorySelect.init();
    });

    /* 文章类别下拉框数据绑定 */
    var categorySelect = {
        init: function () {//初始化数据
            $.ajax({
                type: "POST",
                url: '${pageContext.request.contextPath}/blog/getAllBlogTag',
                dataType:'json',
                contentType:"application/json",
                Accept:"application/json",
                cache: false,
                success: function(data){
                    //debugger;
                    data = eval(data) ;
                    categorySelect.buildOption(data);
                }
            });
        },
        //这里有个小bug 类别传进前端为undefined
        buildOption: function (data) {//构建下拉框数据
            //debugger;
            var optionStr ="";
            for(var i=0 ; i < data.length; i ++) {
                optionStr += "<option value="+data[i].tagId+">";
                optionStr += data[i].tagName;
                optionStr +="</option>";
            }
            $("#articleCategory").append(optionStr);
        }
    }

    /* 发送文章*/
    var writeArticle = {
        doSubmit: function () {//提交
            if (writeArticle.doCheck()) {
                //debugger;
                var summary = $("#articleSummary").val();
                var title = $("#articleTitle").val();
                var content = $("#articleContent").val();
                var tagId = $("#articleCategory").val();
                $.ajax({
                    type: "POST",
                    url: '${pageContext.request.contextPath}/blog/saveOrUpdateBlog',
                    data: {'title':title,'content':content,'tagId':tagId,'summary':summary},
                    dataType:'json',
                    // contentType:"application/json",
                    cache: false,
                    success: function(data){
                        //debugger;
                        if ("success"=== data.result) {
                            alert("保存成功!");
                            setTimeout(function(){
                                // window.close();
                                window.location.href = "${pageContext.request.contextPath}/user/toMain";
                            },1000);
                        }
                    }
                });
            }
        },
        doCheck: function() {//校验
            //debugger;
            var summary = $("#articleSummary").val();
            var title = $("#articleTitle").val();
            var content = $("#articleContent").val();
            if (typeof(title) === undefined || title == null || title === "" ) {
                alert("请填写文章标题!");
                return false;
            }

            if(typeof (content) === undefined || content == null || content === "") {
                alert("请填写文章内容!");
                return false;
            }

            if (typeof (summary) === undefined || summary == null || summary ===""){
                alert("请填写文章摘要");
                return false;
            }

            return true;
        }
    }

    function initPasteDragImg(Editor){
        var doc = document.getElementById(Editor.id)
        doc.addEventListener('paste', function (event) {
            var items = (event.clipboardData || window.clipboardData).items;
            var file = null;
            console.log(items)
            console.log(items.length)
            if (items && items.length) {
                // 搜索剪切板items
                for (var i = 0; i < items.length; i++) {
                    if (items[i].type.indexOf('image') !== -1) {
                        file = items[i].getAsFile();
                        break;
                    }
                }
            }
            else {
                console.log("当前浏览器不支持");
                return;
            }
            if (!file) {
                console.log("粘贴内容非图片");
                return;
            }
            uploadImg(file,Editor);
        });
        var dashboard = document.getElementById(Editor.id)
        dashboard.addEventListener("dragover", function (e) {
            e.preventDefault()
            e.stopPropagation()
        })
        dashboard.addEventListener("dragenter", function (e) {
            e.preventDefault()
            e.stopPropagation()
        })
        dashboard.addEventListener("drop", function (e) {
            e.preventDefault()
            e.stopPropagation()
            var files = this.files || e.dataTransfer.files;
            uploadImg(files[0],Editor);
        })
    }
    function uploadImg(file,Editor){
        var formData = new FormData();
        var fileName=new Date().getTime()+"."+file.name.split(".").pop();
        formData.append('editormd-image-file', file, fileName);
        $.ajax({
            url: Editor.settings.imageUploadURL,
            type: 'post',
            data: formData,
            processData: false,
            contentType: false,
            dataType: 'json',
            success: function (msg) {
                var success=msg['success'];
                if(success==1){
                    var url=msg["url"];
                    if(/\.(png|jpg|jpeg|gif|bmp|ico)$/.test(url)){
                        Editor.insertValue("![]("+msg["url"]+")");
                    }else{
                        Editor.insertValue("[下载附件]("+msg["url"]+")");
                    }
                }else{
                    console.log(msg);
                    alert("上传失败");
                }
            }
        });
    }






</script>
</body>
</html>
