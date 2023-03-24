package com.furmax.dao;

import com.furmax.pojo.Article;
import com.furmax.pojo.Subarea;
import org.apache.ibatis.annotations.Param;

import javax.xml.crypto.Data;
import java.util.Date;
import java.util.List;

public interface ArticleMapper {
//    查询方法:

//    查询所有文章（用于管理后台）
    List<Article> queryAllArticles();
//    按照分区查询文章
    List<Article> queryAllArticlesBySubareaId(@Param("subareaName")String subareaName);
//    查询某一文章
    Article queryOneArticleByArticleId(@Param("articleId")int articleId);
//    按照评论数查询分区内的文章
    List<Article> queryAllArticlesBySubareaIdOrderByCommentsNum(@Param("subareaName")String subareaName);
//    按照点赞数查询分区内的文章
    List<Article> queryAllArticlesBySubareaIdOrderByLikesNum(@Param("subareaName")String subareaName);
//    按照作者查询文章:
    List<Article> queryAllArticlesByArticleCreator(@Param("articleCreator")String articleCreator);
//      根据创建时间查询该分区内的文章:
    List<Article> queryAllArticlesByCreateTime(@Param("subareaName")String subareaName);

    //    新增方法:
    int insertOneArticle(Article article);

//    更新方法:
    int updateOneArticle(Article article);

//    删除方法:
    int deleteOneArticle(@Param("articleId")int articleId);

//    首页模糊搜索
    List<Article> fuzzySearchArticles(@Param("articleTitle")String articleTitle);

    List<Subarea> getAllSubarea();

    int querySubareaIdBySubareaName(@Param("subareaName")String subareaName);

    int updateCommentsNumByArticleId(@Param("articleId")int articleId,@Param("commentsNum")int commentsNum);
}
