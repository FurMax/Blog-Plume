package com.furmax.controller;

import com.alibaba.fastjson.JSON;
import com.furmax.pojo.Article;
import com.furmax.pojo.ArticleComment;
import com.furmax.pojo.BlogTag;
import com.furmax.pojo.Subarea;
import com.furmax.service.ArticleCommentService;
import com.furmax.service.ArticleService;
import com.furmax.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/article")
public class ArticleController {
    @Autowired
    @Qualifier("ArticleServiceImpl")
    private ArticleService articleService;
//测试：
    @Autowired
    //实现自动注入的bean对象指定
    @Qualifier("ArticleCommentServiceImpl")
//下面的函数调用使用
    private ArticleCommentService articleCommentService;

    @RequestMapping("/toArticleEditPage")
    public String toArticleEditPage(){
        return "articleEdit";
    }

    @RequestMapping("toBBS")
    public String toBBS(){
        return "subarea_Java";
    }
//    查询
    @RequestMapping(value = "/queryArticleBySubareaId",method = RequestMethod.GET)
    public String queryArticlesBySubarea(@RequestParam("subareaName") String subareaName,Model model){
        List<Article> articleList = articleService.queryAllArticlesBySubareaId(subareaName);
        model.addAttribute("articleList",articleList);
        return "";
    }

//    用于进入帖子详情页操作
    @RequestMapping(value = "/queryArticleByArticleId",method = RequestMethod.GET)
    public String queryArticleByArticleId(Model model,int articleId){
        int commentsNum = articleCommentService.queryCommentsNumByArticleId(articleId);
        System.out.println(commentsNum);
        Article article = articleService.queryOneArticleByArticleId(articleId);
        model.addAttribute("article",article);

        //评论内容
        List<ArticleComment> comments = articleCommentService.queryCommentsByArticleId(articleId);
        article.setCommentsNum(commentsNum);
        int changeLines = articleService.updateCommentsNumByArticleId(articleId, commentsNum);

        model.addAttribute("list",comments);
        System.out.println(changeLines);
        System.out.println("================================================================");
        System.out.println(article);
        System.out.println(comments);
        for (ArticleComment comment : comments) {
            System.out.println(comment);
        }
        System.out.println("================================================================");
        return "commentShowAndEmojiTest";
    }
//    首页模糊搜索文章:
    @RequestMapping("/indexFuzzy")
    public String indexFuzzySearch(String keyWord,Model model){
        List<Article> articleList = articleService.indexFuzzySearch(keyWord);
        model.addAttribute("articleList",articleList);
        return "searchResult";
    }
    @RequestMapping("/toTestSubarea")
    public String testSubarea(){
        return "testSubarea";
    }
//    用于管理者后台
    @RequestMapping("/queryAll")
    public String queryAllArticles(Model model){
        List<Article> articleList = articleService.queryAllArticles();
        model.addAttribute("articleList",articleList);
        return "articleList";
    }
//    以下三个方法可以写到进入分区的方法里。
//    用于分区最热（评论数）帖子排序展示
    @RequestMapping(value = "/queryAllByCommentNum" ,method = RequestMethod.GET)
    public String queryqueryAllArticlesBySubareaIdOrderByCommentsNum(Model model,@RequestParam("subareaName") String subareaName){
        List<Article> articleList = articleService.queryAllArticlesBySubareaIdOrderByCommentsNum(subareaName);
        model.addAttribute("articleList",articleList);
        return "articleListByCommentsNum";
    }

//    用于分区最新帖子排序展示
    @RequestMapping(value = "/queryAllByCreateTime" ,method = RequestMethod.GET)
    public String queryqueryAllArticlesBySubareaIdOrderByCreateTime(Model model,@RequestParam("subareaName") String subareaName){
        List<Article> articleList = articleService.queryAllArticlesByCreateTime(subareaName);
        model.addAttribute("articleList",articleList);
        return "articleListByCreateTime";
    }

//    用于分区最热（点赞数）帖子排序展示
    @RequestMapping(value = "/queryAllByLikesNum" ,method = RequestMethod.GET)
    public String queryqueryAllArticlesBySubareaIdOrderByLikesNum(Model model,@RequestParam("subareaName") String subareaName){
        List<Article> articleList = articleService.queryAllArticlesBySubareaIdOrderByLikesNum(subareaName);
        model.addAttribute("articleList",articleList);
        return "articleListByLikesNum";
    }
//    新增文章：
    @RequestMapping("/insertOneArticle")
    @ResponseBody
    public int insertOneArticle(@RequestBody String str, Article article) {
        String articleTitle = JSON.parseObject(str).get("articleTitle").toString();
        String articleContent = JSON.parseObject(str).get("articleContent").toString();
        String articleCreator = JSON.parseObject(str).get("articleCreator").toString();
        String articleSummary  = JSON.parseObject(str).get("articleSummary").toString();
        String articleCategory =  JSON.parseObject(str).get("subareaId").toString();
        int articleId = (int) (Math.random()*1000+1);
        article.setArticleTitle(articleTitle);
        article.setArticleContent(articleContent);
        article.setArticleCreator(articleCreator);
        article.setArticleSummary(articleSummary);
        article.setSubareaName(articleCategory);
        article.setArticleId((long) articleId);
        //暂时先设置创建时间
        Date date = new Date();
        article.setCreateTime(date);
        System.out.println("进入了insertOneArticle方法");
        System.out.println("添加的article为");
        System.out.println(article);
        return articleService.insertOneArticle(article);
    }

    @RequestMapping("/updateOneArticle")
    public String updateOneArticle(@RequestBody String str, Article article) {
        //原来是直接在参数写likesNum，但是由于传输的是JSON格式，只能先以一个对象接收
        Integer likesNum = Integer.parseInt(JSON.parseObject(str).get("likesNum").toString());
        Integer articleId = Integer.parseInt(JSON.parseObject(str).get("articleId").toString());
        Article article1 = articleService.queryOneArticleByArticleId(articleId);
        article1.setLikesNum(likesNum);
        System.out.println("进入了updateOneArticle");
        System.out.println(article1);
        articleService.updateOneArticle(article1);
        return "commentShowAndEmojiTest";
    }



    public int deleteOneArticle(int articleId) {
        return articleService.deleteOneArticle(articleId);
    }


    @RequestMapping("/getAllSubarea")
    @ResponseBody
    public String getAllSubarea(Model model){
        List<Subarea> subareaList = articleService.getAllSubarea();
        model.addAttribute("subareaList",subareaList);
        String result=JSON.toJSONString(subareaList);
        System.out.println(result);
        return result;
    }



}
