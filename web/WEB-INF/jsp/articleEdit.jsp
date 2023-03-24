<%--
  Created by IntelliJ IDEA.
  User: Xavier
  Date: 2021/10/17
  Time: 15:57
  To change this template use File | Settings | File Templates.

  articleEdit
--%>
<%@page pageEncoding="UTF-8"%>
<%@page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html class="x-admin-sm" lang="zh" xmlns:th="http://www.thymeleaf.org">

<head>
    <title>富文本编辑器</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/editor.md/css/style.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/editor.md/css/editormd.css" />
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/ui-template3/images/favicon.png" />

    <link rel="stylesheet" href="${pageContext.request.contextPath}/ui-template2/assets/css/base-style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ui-template2/assets/css/style.css">

    <!-- Style Sheet-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"/>
    <link rel='stylesheet' id='bootstrap-css-css'  href='${pageContext.request.contextPath}/css/bootstrap5152.css?ver=1.0' type='text/css' media='all' />
    <link rel='stylesheet' id='responsive-css-css'  href='${pageContext.request.contextPath}/css/responsive5152.css?ver=1.0' type='text/css' media='all' />
    <link rel='stylesheet' id='pretty-photo-css-css'  href='${pageContext.request.contextPath}/js/prettyphoto/prettyPhotoaeb9.css?ver=3.1.4' type='text/css' media='all' />
    <link rel='stylesheet' id='main-css-css'  href='${pageContext.request.contextPath}/css/main5152.css?ver=1.0' type='text/css' media='all' />
    <link rel='stylesheet' id='custom-css-css'  href='${pageContext.request.contextPath}/css/custom5152.html?ver=1.0' type='text/css' media='all' />

    <!--MDUI-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/mudi/mdui.min.css"/>
    <%--                <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/mdui@1.0.1/dist/css/mdui.min.css"/>--%>

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
                <script src="${pageContext.request.contextPath}/jsp/Article/js/html5.js"></script>
                <![endif]-->


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



<div id="layout">
    <h1 align="center">Write Down Your Splendid ideas</h1>
    <header>
        <h1>Write Down Your UserName</h1>
        <input name="articleCreator" id="articleCreator" placeholder="author"/>
        <div class="col-lg-12">
            <div class="form-group">
                <label class="">请填写标题：</label>
                <input type="text"  id="articleTitle" class="form-control" placeholder="请输入博客标题~" >
            </div>
        </div>
        <div class="col-lg-12">
            <div class="form-group">
                <label class="">请填写摘要：</label>
                <input type="text"  id="articleSummary" class="form-control" placeholder="请输入博客摘要~" >
            </div>
        </div>
        <div class="col-lg-12">
            <label class="">请选择本帖子所属分区 :</label>
            <select id="articleCategory"></select>
        </div>
    </header>
    <div id="test-editormd">
        <textarea style="display:none;" name="articleContent" id="articleContent"></textarea>

        <textarea class="editormd-html-textarea" name="$id-html-code"></textarea>
    </div>
</div>
<span id="btnList">
    <button type="button" id="publishArticle" onclick="submit()" class="btn btn-info">发布帖子</button>
</span>
<br/>
<br/>
<br/>
<br/>
<hr/>
<h2 align="center"><b>~END~</b></h2>



<script src="${pageContext.request.contextPath}/staticResource/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/editor.md/editormd.min.js"></script>
<script type="text/javascript">
    var testEditor;
    $(function() {
        testEditor = editormd("test-editormd", {
            width   :"90%",
            height  :640,
            syncScrolling :"single",
            path    :"${pageContext.request.contextPath}/plugins/editor.md/lib/",
            saveHTMLToTextarea : true,

            emoji: true,//emoji表情，默认关闭
            taskList: true,
            tocm: true, // Using [TOCM]
            tex: true,// 开启科学公式TeX语言支持，默认关闭

            flowChart: true,//开启流程图支持，默认关闭
            sequenceDiagram: true,//开启时序/序列图支持，默认关闭,

            dialogLockScreen : false,//设置弹出层对话框不锁屏，全局通用，默认为true
            dialogShowMask : false,//设置弹出层对话框显示透明遮罩层，全局通用，默认为true
            dialogDraggable : false,//设置弹出层对话框不可拖动，全局通用，默认为true
            dialogMaskOpacity : 0.4, //设置透明遮罩层的透明度，全局通用，默认值为0.1
            dialogMaskBgColor : "#000",//设置透明遮罩层的背景颜色，全局通用，默认为#fff

            codeFold: true,

            imageUpload : true,
            imageFormats : ["jpg", "jpeg", "gif", "png", "bmp", "webp"],
            imageUploadURL : "/smart-api/upload/editormdPic/",

            /*上传图片成功后可以做一些自己的处理*/
            onload: function () {
                //console.log('onload', this);
                //this.fullscreen();
                //this.unwatch();
                //this.watch().fullscreen();
                //this.width("100%");
                //this.height(480);
                //this.resize("100%", 640);
            },

            /**设置主题颜色*/
            editorTheme: "pastel-on-dark",
            theme: "gray",
            previewTheme: "white"
        });
        categorySelect.init();


    });
    /* 文章类别下拉框数据绑定 */
    var categorySelect = {
        init: function () {//初始化数据
            $.ajax({
                type: "POST",
                url: '${pageContext.request.contextPath}/article/getAllSubarea',
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
                optionStr += "<option value="+data[i].subareaId+">";
                optionStr += data[i].subareaName;
                optionStr +="</option>";
            }
            $("#articleCategory").append(optionStr);
        }
    }

    function submit() {
        var articleCreator = $('#articleCreator').val()
        var articleTitle = $('#articleTitle').val()
        var articleSummary =  $('#articleSummary').val()
        var subareaId = $("#articleCategory").val();
        var articleContent = testEditor.getHTML()          // 获取 Textarea 保存的 HTML 源码
        var params = {
            articleCreator,
            articleTitle,
            articleSummary,
            articleContent,
            subareaId
        }
        $.ajax({
            type:"POST",
            url:"${pageContext.request.contextPath}/article/insertOneArticle",
            async:false,
            dataType:'json',
            contentType:"application/json",
            data:JSON.stringify(params),//传递的数据
            success:function () {
                console.log("insert articleContent success");
                alert("发布成功");
                setTimeout(function(){
                    // window.close();
                    window.location.href = "${pageContext.request.contextPath}/user/toBBSHome";
                },1000);
            },
            error:function () {
                console.log("insert articleContent error")
            }
        })
    }
</script>

</body>
</html>
