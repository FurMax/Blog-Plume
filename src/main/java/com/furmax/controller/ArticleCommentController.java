package com.furmax.controller;

import com.alibaba.fastjson.JSON;
import com.furmax.pojo.Article;
import com.furmax.pojo.ArticleComment;
import com.furmax.service.ArticleCommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/articleComment")
public class ArticleCommentController {
    @Autowired
    //实现自动注入的bean对象指定
    @Qualifier("ArticleCommentServiceImpl")
    //下面的函数调用使用
    private ArticleCommentService articleCommentService;


    //根据文章id查找评论
    @RequestMapping(value = "/queryCommentsByArticleId",method = RequestMethod.GET)
    public String queryCommentsByArticleId(Integer articleId, Model model){
        List<ArticleComment> comments = articleCommentService.queryCommentsByArticleId(articleId);
        for (ArticleComment comment : comments) {
            System.out.println(comment);
        }
        System.out.println("进入queryCommentsByArticleId articliId为"+articleId);
        model.addAttribute("list",comments);
        return "commentShowAndEmojiTest";
    }



    //根据文章id查找评论
    //controller和ajax交互
    @RequestMapping("/queryCommentsByArticleId1")
    @ResponseBody
    public List<String> queryCommentsByArticleId1(@RequestBody String str, Model model){
        //原来是直接在参数写articleId，但是由于传输的是JSON格式，只能先以一个对象接收
        Integer articleId = Integer.parseInt(JSON.parseObject(str).get("articleId").toString());
        System.out.println("queryCommentsByArticleId1");
        System.out.println(articleId);
        List<ArticleComment> comments = articleCommentService.queryCommentsByArticleId(articleId);
        List<String> realComments = new ArrayList<String>();
        for (ArticleComment comment : comments) {
            System.out.println(comment);
            realComments.add(comment.getContent());
        }
        model.addAttribute("list",comments);
        return realComments;
    }

    //根据评论Id查找子级评论
    @RequestMapping("/querySonCommentsBySupCommentsId")
    public String querySonCommentsBySupCommentsId(int supId,Model model){
        List<ArticleComment> comments = articleCommentService.queryCommentsBySupCommentsId(supId);
        for (ArticleComment comment : comments) {
            System.out.println(comment);
        }
        model.addAttribute("list",comments);
        return "comment";
    }

    //查询所有评论
    @RequestMapping("/queryAllComments")
    public String queryAllComments(Model model){
        System.out.println("进入queryAllComments");
        List<ArticleComment> comments = articleCommentService.queryAllComments();
        for (ArticleComment comment : comments) {
            System.out.println(comment);
        }
        model.addAttribute("list",comments);
        return "commentShowAndEmojiTest";
    }

    //添加评论
    @RequestMapping("/insertComment")
    public void insertComment(@RequestBody String str,ArticleComment comment,String content){
        Integer articleId = Integer.parseInt(JSON.parseObject(str).get("articleId").toString());
        comment.setArticleId(articleId);
        String commentContent = JSON.parseObject(str).get("content").toString();
        comment.setContent(commentContent);
        comment.setSupId(-1);
        Date date = new Date();
        comment.setCreateTime(date);
        articleCommentService.insertComment(comment);
    }
    //添加评论
    @RequestMapping("/insertReplayComment")
    public void insertReplayComment(@RequestBody String str, ArticleComment comment,String content){
        //原来是直接在参数写supId，但是由于传输的是JSON格式，只能先以一个对象接收
        Integer supId = Integer.parseInt(JSON.parseObject(str).get("supId").toString());
        comment.setSupId(supId);
        String commentContent = JSON.parseObject(str).get("content").toString();
        comment.setContent(commentContent);
        Date date = new Date();
        comment.setCreateTime(date);
        //文章id先固定
        comment.setArticleId(3);
        articleCommentService.insertComment(comment);
    }




}
