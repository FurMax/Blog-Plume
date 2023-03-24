<%--
  Created by IntelliJ IDEA.
  User: Xavier
  Date: 2021/10/17
  Time: 15:57
  To change this template use File | Settings | File Templates.

  articleContent
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta charset="utf-8">
    <link  rel="stylesheet" href="${pageContext.request.contextPath}/staticResource/css/commentMain.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/staticResource/css/sinaFaceAndEffec.css" />

    <%--emoji  css  --%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib2/css/bootstrap.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib2/css/jquery.mCustomScrollbar.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/jquery.emoji0.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib2/css/railscasts.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/index.css"/>
    <%--paymentCode.css    --%>
    <style>
        .erweima{
            position: absolute;
            top: 0;
            left: -150px;
            display: none;
        }
        .nodeSmall a {
            display: block;
            width: 50px;
            height: 50px;
        }
    </style>

    <%--like    --%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/staticResource/css/likestyle01.css"/>

    <script src="http://www.jq22.com/jquery/jquery-1.9.1.js"></script>
    <%--emoji-js--%>
    <script src="${pageContext.request.contextPath}/lib2/script/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/lib2/script/highlight.pack.js"></script>
    <script src="${pageContext.request.contextPath}/lib2/script/jquery.mousewheel-3.0.6.min.js"></script>
    <script src="${pageContext.request.contextPath}/lib2/script/jquery.mCustomScrollbar.min.js"></script>
    <script src="${pageContext.request.contextPath}/dist/js/jquery.emoji.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/staticResource/js/commentMain.js"></script>

    <title></title>
</head>
<body style="text-align: center">
<script type="text/javascript">
    // hljs.initHighlightingOnLoad();
    var btn = document.getElementById("btnLoad1");
    btn.onclick = function() {
        document.getElementById("btnLoad1").style.display = "none";
    }
    function parse(){
        $(".comment-body").emojiParse({
            icons: [{
                path: "${pageContext.request.contextPath}/staticResource/images/emoji-img/tieba/",
                file: ".jpg",
                placeholder: ":{alias}:",
                alias: {
                    1: "hehe",
                    2: "haha",
                    3: "tushe",
                    4: "a",
                    5: "ku",
                    6: "lu",
                    7: "kaixin",
                    8: "han",
                    9: "lei",
                    10: "heixian",
                    11: "bishi",
                    12: "bugaoxing",
                    13: "zhenbang",
                    14: "qian",
                    15: "yiwen",
                    16: "yinxian",
                    17: "tu",
                    18: "yi",
                    19: "weiqu",
                    20: "huaxin",
                    21: "hu",
                    22: "xiaonian",
                    23: "neng",
                    24: "taikaixin",
                    25: "huaji",
                    26: "mianqiang",
                    27: "kuanghan",
                    28: "guai",
                    29: "shuijiao",
                    30: "jinku",
                    31: "shengqi",
                    32: "jinya",
                    33: "pen",
                    34: "aixin",
                    35: "xinsui",
                    36: "meigui",
                    37: "liwu",
                    38: "caihong",
                    39: "xxyl",
                    40: "taiyang",
                    41: "qianbi",
                    42: "dnegpao",
                    43: "chabei",
                    44: "dangao",
                    45: "yinyue",
                    46: "haha2",
                    47: "shenli",
                    48: "damuzhi",
                    49: "ruo",
                    50: "OK"
                }
            }, {
                path: "${pageContext.request.contextPath}/staticResource/images/emoji-img/qq/",
                file: ".gif",
                placeholder: "#qq_{alias}#"
            }]
        });
    }
</script>
<div align="center" style="background: #f5f5f5;width:inherit;height: inherit">
    <div id="left-icon" style="float:left;width:100px;height: inherit;margin-left: 10%;position:fixed;margin-top: 10%">
        <div class="feed" id="feed1">
            <div class="heart " id="like1" rel="like" >
                <%--        <div class="heart " id="like1" rel="like" onclick="like()">--%>
                <div class="likeCount" id="likeCount1">${article.likesNum}</div>
            </div>
            <div class="commentsNum">
                <div class="likeCount" id="commentsNum">${article.commentsNum}</div>
                <img src="${pageContext.request.contextPath}/staticResource/images/commentsNum.png" width="35px" height="35px" onclick="goto()">
            </div>
            <div class="reward">
                <div class="likeCount"></div>
                <img src="${pageContext.request.contextPath}/staticResource/images/reward.png" width="35px" height="35px" id="node_small">
                <a href="#"></a>
                <div class="erweima" id="er">
                    <img src="${pageContext.request.contextPath}/staticResource/images/paymentCode.JPG" width="100%" height="100%" alt=""/>
                </div>
            </div>
        </div>
    </div>

    <div id="articleContent" style="background: #ffffff;width: 900px;height: auto;display:inline-block;">
        <tr>

            <td>${article.articleTitle}</td><br/>
            <td>${article.createTime}</td><br/>
            <td>${article.articleContent}</td>

        </tr>
        <p>这是文章主题内容</p>
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    </div>

    <div id="righe-userInfo" style="background: #ffffff;width: 200px;height: auto;display:inline-block;margin-left:2%;margin-right: -15%;position:fixed">
        <th>articleCreator</th><br/>
        <td>${article.articleCreator}</td>
        <br><br><br><br><br><br><br><br><br>
    </div>

    <hr>

    <div id="articleComment" style="background:#ffffff;width: 900px; height: auto;">
        <div class="wrap">
            <div class="comment">
                <div class="head-face">
                    <img src="${pageContext.request.contextPath}/staticResource/images/comment1.jpg">
                    <p>lawrence</p>
                </div>
                <!--添加评论-->
                <div class="content">
                    <div class="cont-box">
                        <textarea class="text" placeholder="请输入..." name="content" id="commentContent"></textarea>
                    </div>
                    <div class="tools-box">
                        <div class="operator-box-btn"><span class="face-icon" id="btnLoad1" onclick="hide()">☺</span></div>
                        <div class="submit-btn"><input type="button" value="提交评论" onclick="insertComment()"/></div>
                    </div>
                </div>
            </div>
            <%--评论区--%>
            <div>
                <c:forEach var="comment" items="${requestScope.get('list')}">
                    <div id="info-show" align="left">
                        <li>
                            <div class="head-face">
                                <img src="${pageContext.request.contextPath}/staticResource/images/comment1.jpg"/>
                            </div>
                            <script type="text/javascript">parse()</script>
                            <div class="reply-cont">
                                <p class="username">${comment.getUserId()}</p>
                                <p class="comment-body">${comment.getArticleId()}</p>
                                <p class="comment-body" id="sourceContent" >
                                        ${comment.getContent()}
                                </p>
                                <p class="comment-footer">
                                        ${comment.getCreateTime()}
                                    <!--等下使用函数-->
                                    <a class="comment-footer" onclick="replay(${comment.getCommentId()})">回复</a>
                                </p>
                            </div>
                        </li>
                        <c:forEach var="childComment" items="${comment.getReplayComments()}">
                            <li>
                                <div class="child-show" style="margin-left: 50px">
                                    <div class="head-face">
                                        <img src="${pageContext.request.contextPath}/staticResource/images/comment2.jpg"/>
                                    </div>
                                    <div class="reply-cont">
                                        <p class="username">${childComment.getUserId()}</p>
                                        <p class="comment-body">${childComment.getArticleId()}</p>
                                        <p class="comment-body">${childComment.getContent()}</p>
                                        <p></p>
                                        <p class="comment-footer">${childComment.getCreateTime()}
                                            <button class="comment-footer" onclick="replay(${childComment.getCommentId()})">回复</button>
                                        </p>
                                        <p style="border-bottom: 1px dashed #c0c0c0;"></p>
                                    </div>
                                </div>
                            </li>
                        </c:forEach>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>

</div>


<script type="text/javascript">
    // hljs.initHighlightingOnLoad();
    var btn = document.getElementById("btnLoad1");
    btn.onclick = function() {
        document.getElementById("btnLoad1").style.display = "none";
    }

    $(function () {
        //queryOneArticleByArticleId();
        //queryAllCommentsByArticleId();
        //queryAllCommentsByArticleId1();
    })

    //查询this.article
    function queryOneArticleByArticleId() {

    }

    function queryAllCommentsByArticleId() {
        $.ajax({
            type:"POST",
            url:"${pageContext.request.contextPath}/articleComment/queryCommentsByArticleId",
            <!--async 设置为 false，则所有的请求均为同步请求，在没有返回值之前，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行 -->
            async:false,
            data:{"articleId":${article.articleId}},//传递的数据
            success:function () {
                //ajax实际上是通过XMLHttpRequest来向服务器发送异步请求的，
                // 从服务器获取数据，然后使用JS来更新页面，这也就是常说的局部刷新实现方式，
                // 所以ajax请求之后，服务器返回的都是纯文本流，
                // 客户端的浏览器在获取ajax异步结果时，不是直接显示在页面上，
                // 而是要通过js来进行处理，js处理完以后才能显示在页面上，
                // 所以这才导致了controller中的ModelAndView对象不能直接返回视图
                //解决方法
                // <!--async 设置为 false，则所有的请求均为同步请求，在没有返回值之前，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行 -->
                //将页面跳转的控制放到前端页面的js中来进行跳转，即location.href = 'xxxxxxx'
                window.location.href="${pageContext.request.contextPath}/WEB-INF/jsp/commentShowAndEmojiTest.jsp";
                console.log("queryCommentsByArticleId success")
            },
            error:function () {
                console.log("queryCommentsByArticleId error")
            }
        })
    }

    function queryAllCommentsByArticleId1(){
        var params = {
            articleId:${article.articleId}
        }
        $.ajax({
            type:"POST",
            url:"${pageContext.request.contextPath}/articleComment/queryCommentsByArticleId1",
            dataType:'json',
            contentType:"application/json",
            Accept:"application/json",
            cache: false,
            //ajax前端往后端发送需要转成json
            data:JSON.stringify(params),
            success:function (data) {
                console.log(data)
                parse()
                console.log("success")
            },
            error:function () {
                console.log("error")
            }
        })
    }

    $("#btnLoad1").click(function () {
        $("#commentContent").emoji({
            showTab: true,
            animation: 'fade',
            icons: [{
                name: "贴吧表情",
                path: "${pageContext.request.contextPath}/staticResource/images/emoji-img/tieba/",
                maxNum: 50,
                file: ".jpg",
                placeholder: ":{alias}:",
                alias: {
                    1: "hehe",
                    2: "haha",
                    3: "tushe",
                    4: "a",
                    5: "ku",
                    6: "lu",
                    7: "kaixin",
                    8: "han",
                    9: "lei",
                    10: "heixian",
                    11: "bishi",
                    12: "bugaoxing",
                    13: "zhenbang",
                    14: "qian",
                    15: "yiwen",
                    16: "yinxian",
                    17: "tu",
                    18: "yi",
                    19: "weiqu",
                    20: "huaxin",
                    21: "hu",
                    22: "xiaonian",
                    23: "neng",
                    24: "taikaixin",
                    25: "huaji",
                    26: "mianqiang",
                    27: "kuanghan",
                    28: "guai",
                    29: "shuijiao",
                    30: "jinku",
                    31: "shengqi",
                    32: "jinya",
                    33: "pen",
                    34: "aixin",
                    35: "xinsui",
                    36: "meigui",
                    37: "liwu",
                    38: "caihong",
                    39: "xxyl",
                    40: "taiyang",
                    41: "qianbi",
                    42: "dnegpao",
                    43: "chabei",
                    44: "dangao",
                    45: "yinyue",
                    46: "haha2",
                    47: "shenli",
                    48: "damuzhi",
                    49: "ruo",
                    50: "OK"
                },
                title: {
                    1: "呵呵",
                    2: "哈哈",
                    3: "吐舌",
                    4: "啊",
                    5: "酷",
                    6: "怒",
                    7: "开心",
                    8: "汗",
                    9: "泪",
                    10: "黑线",
                    11: "鄙视",
                    12: "不高兴",
                    13: "真棒",
                    14: "钱",
                    15: "疑问",
                    16: "阴脸",
                    17: "吐",
                    18: "咦",
                    19: "委屈",
                    20: "花心",
                    21: "呼~",
                    22: "笑脸",
                    23: "冷",
                    24: "太开心",
                    25: "滑稽",
                    26: "勉强",
                    27: "狂汗",
                    28: "乖",
                    29: "睡觉",
                    30: "惊哭",
                    31: "生气",
                    32: "惊讶",
                    33: "喷",
                    34: "爱心",
                    35: "心碎",
                    36: "玫瑰",
                    37: "礼物",
                    38: "彩虹",
                    39: "星星月亮",
                    40: "太阳",
                    41: "钱币",
                    42: "灯泡",
                    43: "茶杯",
                    44: "蛋糕",
                    45: "音乐",
                    46: "haha",
                    47: "胜利",
                    48: "大拇指",
                    49: "弱",
                    50: "OK"
                }
            }, {
                path: "${pageContext.request.contextPath}/staticResource/images/emoji-img/qq/",
                maxNum: 91,
                excludeNums: [41, 45, 54],
                file: ".gif",
                placeholder: "#qq_{alias}#"
            }]
        });
    });

    function parse(){
        $(".comment-body").emojiParse({
            icons: [{
                path: "${pageContext.request.contextPath}/staticResource/images/emoji-img/tieba/",
                file: ".jpg",
                placeholder: ":{alias}:",
                alias: {
                    1: "hehe",
                    2: "haha",
                    3: "tushe",
                    4: "a",
                    5: "ku",
                    6: "lu",
                    7: "kaixin",
                    8: "han",
                    9: "lei",
                    10: "heixian",
                    11: "bishi",
                    12: "bugaoxing",
                    13: "zhenbang",
                    14: "qian",
                    15: "yiwen",
                    16: "yinxian",
                    17: "tu",
                    18: "yi",
                    19: "weiqu",
                    20: "huaxin",
                    21: "hu",
                    22: "xiaonian",
                    23: "neng",
                    24: "taikaixin",
                    25: "huaji",
                    26: "mianqiang",
                    27: "kuanghan",
                    28: "guai",
                    29: "shuijiao",
                    30: "jinku",
                    31: "shengqi",
                    32: "jinya",
                    33: "pen",
                    34: "aixin",
                    35: "xinsui",
                    36: "meigui",
                    37: "liwu",
                    38: "caihong",
                    39: "xxyl",
                    40: "taiyang",
                    41: "qianbi",
                    42: "dnegpao",
                    43: "chabei",
                    44: "dangao",
                    45: "yinyue",
                    46: "haha2",
                    47: "shenli",
                    48: "damuzhi",
                    49: "ruo",
                    50: "OK"
                }
            }, {
                path: "${pageContext.request.contextPath}/staticResource/images/emoji-img/qq/",
                file: ".gif",
                placeholder: "#qq_{alias}#"
            }]
        });
    }

    //增加主评论
    function insertComment() {
        var params = {
            articleId : ${article.articleId},
            content : $("#commentContent").val(),
        }
        $.ajax({
            type: "POST",
            url: "${pageContext.request.contextPath}/articleComment/insertComment",
            dataType: "json",
            contentType: "application/json",
            cache:false,
            //ajax前端往后端发送需要转成json
            data:JSON.stringify(params),
            success:function () {
                window.location.href="${pageContext.request.contextPath}/article/queryArticleByArticleId?articleId="+${article.articleId}
                    console.log("insertComment   success")
            },
            error:function () {
                window.location.href="${pageContext.request.contextPath}/article/queryArticleByArticleId?articleId="+${article.articleId}
                    console.log("insertComment   error")
            }
        })
    }

    //增加回复子评论
    function replay(data) {
        var params = {
            supId : data,
            //这种该方法可以实现前段数据从js读取到
            content : $("#commentContent").val(),
        }
        $.ajax({
            type: "POST",
            url: "${pageContext.request.contextPath}/articleComment/insertReplayComment",
            dataType: "json",
            contentType: "application/json",
            cache:false,
            //ajax前端往后端发送需要转成json
            data:JSON.stringify(params),

            //这里的articleId后续需要写成变量

            success:function () {
                window.location.href="${pageContext.request.contextPath}/article/queryArticleByArticleId?articleId="+${article.articleId}
                    console.log("insertReplayComment   success")
            },
            error:function () {
                window.location.href="${pageContext.request.contextPath}/article/queryArticleByArticleId?articleId="+${article.articleId}
                    console.log("insertReplayComment   error")
            }
        })
    }

    function like() {
        var click = false
        var likeParams = {
            articleId : ${article.articleId},
            likesNum : ${article.likesNum}
        }
        if (click == false){
            click = true;
            likeParams.likesNum ++;
        }
        else{
            click = false;
            likeParams.likesNum --;
        }
        $.ajax({
            type: "POST",
            url: "${pageContext.request.contextPath}/article/updateOneArticle",
            dataType: "json",
            contentType: "application/json",
            cache:false,
            //ajax前端往后端发送需要转成json
            data:JSON.stringify(likeParams),
            success:function () {
                window.location.href="${pageContext.request.contextPath}/article/queryArticleByArticleId?articleId="+${article.articleId}
                    console.log("like   success")
            },
            error:function () {
                window.location.href="${pageContext.request.contextPath}/article/queryArticleByArticleId?articleId="+${article.articleId}
                    console.log("like   error")
            }
        })
    }


    $('body').on("click",'.heart',function()
    {

        var A=$(this).attr("id");
        var B=A.split("like");
        var messageID=B[1];
        var C=parseInt($("#likeCount"+messageID).html());
        $(this).css("background-position","")
        var D=$(this).attr("rel");


        var likeParams = {
            articleId : ${article.articleId},
            likesNum : ${article.likesNum}
        }
        if(D === 'like')
        {
            $("#likeCount"+messageID).html(C+1);
            likeParams.likesNum ++;
            $(this).addClass("heartAnimation").attr("rel","unlike");

        }
        else
        {
            $("#likeCount"+messageID).html(C-1);
            likeParams.likesNum --;
            $(this).removeClass("heartAnimation").attr("rel","like");
            $(this).css("background-position","left");
        }
        $.ajax({
            type: "POST",
            url: "${pageContext.request.contextPath}/article/updateOneArticle",
            dataType: "json",
            contentType: "application/json",
            cache:false,
            //ajax前端往后端发送需要转成json
            data:JSON.stringify(likeParams),
            success:function () {
                console.log("like   success")
            },
            error:function () {
                console.log("like   error")
            }
        })


    });

    function goto() {
        window.location.hash="#articleComment"
    };

    window.onload = function () {
        a("#node_small","#er");
    }
    function a(a,b) {
        $(a).mouseover(function () {
            $(b).css("display","block");
        });
        $(a).mouseout(function () {
            $(b).css("display","none");
        });
    }


</script>
</body>





</html>
