package com.furmax.dao;

import com.furmax.pojo.Article;
import com.furmax.pojo.ArticleComment;

import java.util.List;

public interface CommentMapper {
    //根据文章id查找评论
    public List<ArticleComment> queryCommentsByArticleId(int articleId);
    //根据评论Id查找子级评论
    public List<ArticleComment> queryCommentsBySupCommentsId(int supId);
    //查询所有评论
    public List<ArticleComment> queryAllComments();
    //添加评论
    public void insertComment(ArticleComment articleComment);
    //查询文章的评论个数
    public int queryCommentsNumByArticleId(int articleId);
}
