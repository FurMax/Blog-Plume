package com.furmax.service;

import com.furmax.pojo.Article;
import com.furmax.pojo.Subarea;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface ArticleService {
    //    查询方法:

    //    查询所有文章（用于管理后台）
    List<Article> queryAllArticles();
    //    按照分区查询文章
    List<Article> queryAllArticlesBySubareaId(String subareaName);
    //    查询某一文章
    Article queryOneArticleByArticleId(int articleId);
    //    按照评论数查询分区内的文章
    List<Article> queryAllArticlesBySubareaIdOrderByCommentsNum(String subareaName);
    //    按照点赞数查询分区内的文章
    List<Article> queryAllArticlesBySubareaIdOrderByLikesNum(String subareaName);
    //    按照作者查询文章:
    List<Article> queryAllArticlesByArticleCreator(String articleCreator);
    //      根据创建时间查询该分区内的文章:
    List<Article> queryAllArticlesByCreateTime(String subareaName);

    //    新增方法:
    int insertOneArticle(Article article);

    //    更新方法:
    int updateOneArticle(Article article);

    //    删除方法:
    int deleteOneArticle(int articleId);

//    首页模糊搜索:
    List<Article> indexFuzzySearch(String articleTitle);

    List<Subarea> getAllSubarea();

    int updateCommentsNumByArticleId(int articleId,int commentsNum);

}
