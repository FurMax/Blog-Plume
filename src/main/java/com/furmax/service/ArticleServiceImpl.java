package com.furmax.service;

import com.furmax.dao.ArticleMapper;
import com.furmax.pojo.Article;
import com.furmax.pojo.Subarea;

import java.util.Date;
import java.util.List;

public class ArticleServiceImpl implements ArticleService{
    public ArticleMapper articleMapper;

    public void setArticleMapper(ArticleMapper articleMapper) {
        this.articleMapper = articleMapper;
    }

    @Override
    public List<Article> queryAllArticles() {
        return articleMapper.queryAllArticles();
    }

    @Override
    public List<Article> queryAllArticlesBySubareaId(String subareaName) {
        return articleMapper.queryAllArticlesBySubareaId(subareaName);
    }

    @Override
    public Article queryOneArticleByArticleId(int articleId) {
        return articleMapper.queryOneArticleByArticleId(articleId);
    }

    @Override
    public List<Article> queryAllArticlesBySubareaIdOrderByCommentsNum(String subareaName) {
        int subareaId = articleMapper.querySubareaIdBySubareaName(subareaName);
        String subarea = String.valueOf(subareaId);
        return articleMapper.queryAllArticlesBySubareaIdOrderByCommentsNum(subarea);
    }

    @Override
    public List<Article> queryAllArticlesBySubareaIdOrderByLikesNum(String subareaName) {
        int subareaId = articleMapper.querySubareaIdBySubareaName(subareaName);
        String subarea = String.valueOf(subareaId);
        return articleMapper.queryAllArticlesBySubareaIdOrderByLikesNum(subarea);
    }

    @Override
    public List<Article> queryAllArticlesByArticleCreator(String articleCreator) {
        return articleMapper.queryAllArticlesByArticleCreator(articleCreator);
    }

    @Override
    public List<Article> queryAllArticlesByCreateTime(String subareaName) {
        int subareaId = articleMapper.querySubareaIdBySubareaName(subareaName);
        String subarea = String.valueOf(subareaId);
        return articleMapper.queryAllArticlesByCreateTime(subarea);
    }

    @Override
    public int insertOneArticle(Article article) {
        return articleMapper.insertOneArticle(article);
    }

    @Override
    public int updateOneArticle(Article article) {
        return articleMapper.updateOneArticle(article);
    }

    @Override
    public int deleteOneArticle(int articleId) {
        return articleMapper.deleteOneArticle(articleId);
    }

    @Override
    public List<Article> indexFuzzySearch(String articleTitle) {
        return articleMapper.fuzzySearchArticles("%"+articleTitle+"%");
    }

    @Override
    public List<Subarea> getAllSubarea() {
        return articleMapper.getAllSubarea();
    }

    @Override
    public int updateCommentsNumByArticleId(int articleId, int commentsNum) {
        return articleMapper.updateCommentsNumByArticleId(articleId,commentsNum);
    }
}
