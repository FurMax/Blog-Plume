<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Fur
  Date: 2021/8/26
  Time: 23:40
  To change this template use File | Settings | File Templates.
--%>
<%--之后需要整合到博客详情页面 可以先进行测试~ --%>


<%--评论区前端已经加入页面，但测试还未完成。。主要按下发布没反应。--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en" >
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>评论楼中楼功能</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/semantic-ui/2.2.4/semantic.min.css">
</head>
<body>

<div id="waypoint" class="m-margin- animated fadeIn">
    <div class="ui container m-opacity box-shadow-max">
        <div  class="ui bottom attached segment">
            <!--评论区域列表-->
            <div id="articleComment-container"  class="ui teal segment">


                    <div class="ui threaded articleComments" style="max-width: 100%;">
                        <h3 class="ui dividing header">评论</h3>
                        <c:forEach items="${articleComments}" var="articleComment">
                        <div class="articleComment" >

                            <div class="content">
                                <a class="author" >
                                    <img src="${pageContext.request.contextPath}/img/avatar.jpg" name="avatar" >
                                    <span>${articleComment.nickname}</span>
                                </a>
                                <div class="metadata">
                                    <span class="date" >${articleComment.create_time}</span>
                                </div>
                                <div class="text">
                                    ${articleComment.content}
                                </div>
                                <div class="actions">
                                    <a class="reply" data-commentid="${articleComment.id}" data-commentnickname="${articleComment.nickname}"  onclick="reply(this)">回复</a>
                                </div>
                            </div>
<%--                            这边可能会存在问题--%>
                            <!--子集评论-->
                            <div class="articleComments">
                                <c:forEach items="${articleComment.replyComments}" var="reply">
                                <div class="articleComment" >


                                    <div class="content">
                                        <a class="author" >
                                            <img src="${pageContext.request.contextPath}/img/avatar.jpg" name="avatar" >
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
                        <button id="commentpost-btn" type="button" class="ui teal button m-mobile-wide" onclick="postData.doSubmitComments();"><i class="edit icon"></i>发布</button>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/jquery-1.8.3/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.2/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/semantic-ui/2.2.4/semantic.min.js"></script>

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


    var postData={
        doSubmitComments : function () {
            if (postData.doCheckComments()){
            $.ajax({
                type: "POST",
                    url: '${pageContext.request.contextPath}/articleComment/saveComments',
                    data: {'parentComment.id':$("[name='parentComment.id']").val(),'nickname':$("[name='nickname']").val(),'email':$("[name='email']").val(),'content':$("[name='content']").val()},
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
        $(window).scrollTop($('#articleComment-form'),500);
    }
</script>
</body>
</html>