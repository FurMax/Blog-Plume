package com.furmax.service;

import com.furmax.dao.CommentMapper;
import com.furmax.pojo.ArticleComment;


import java.util.ArrayList;
import java.util.List;

public class ArticleCommentServiceImpl implements ArticleCommentService {
    //定义CommentMapper方便bean管理
    private CommentMapper commentMapper;
    //定义set方法方便注入
    public void setCommentMapper(CommentMapper commentMapper) {
        this.commentMapper = commentMapper;
    }


    public int queryCommentsNumByArticleId(int articleId) {
        return commentMapper.queryCommentsNumByArticleId(articleId);
    }

    public List<ArticleComment> queryCommentsByArticleId(int articleId) {
        //定义的根据articleId返回的对象
        List<ArticleComment> commentsById = new ArrayList<ArticleComment>();
        System.out.println("文章id为:"+articleId);
        List<ArticleComment> commentsBySupId = listComment(articleId);

        //因为listComment(articleId)查询的是所有评论
        //需要筛选==articleId的评论
        for (ArticleComment articleComment : commentsBySupId) {
            if (articleComment.getArticleId()==articleId){
                commentsById.add(articleComment);
            }
        }
        return commentsById;
        //return commentMapper.queryCommentsByArticleId(articleId);
    }


    public List<ArticleComment> queryCommentsBySupCommentsId(int supId) {
        return commentMapper.queryCommentsBySupCommentsId(supId);
    }

    public List<ArticleComment> queryAllComments() {
        return commentMapper.queryAllComments();
    }



    //插入comment
    public void insertComment(ArticleComment articleComment) {
        commentMapper.insertComment(articleComment);
    }

    //定义一个集合存放迭代找出的所有子代
    private List<ArticleComment> temReplays = new ArrayList();

    private List<ArticleComment> listComment(long articleId){
        //查询全部父节点
        List<ArticleComment> articleComments = commentMapper.queryCommentsBySupCommentsId(-1);
        for (ArticleComment articleComment : articleComments) {
            int supCommentId = articleComment.getCommentId();
            List<ArticleComment> childArticleComments = commentMapper.queryCommentsBySupCommentsId(supCommentId);
            //查找出子评论
            combineChildren(childArticleComments);
            articleComment.setReplayComments(temReplays);
            temReplays = new ArrayList<ArticleComment>();
        }
        return articleComments;
    }

    private void combineChildren (List<ArticleComment> childArticleComments){
        //查找一级子评论
        if (childArticleComments.size()>0){
            for (ArticleComment childArticleComment : childArticleComments) {
                temReplays.add(childArticleComment);
                int commentId = childArticleComment.getCommentId();
                recursively(commentId);
            }
        }
    }

    private void recursively(int childId){
        //根据一级子评论查找二级子评论
        List<ArticleComment> childcomments = commentMapper.queryCommentsBySupCommentsId(childId);

        if (childcomments.size()>0){
            for (ArticleComment childcomment : childcomments) {
                int commentId = childcomment.getCommentId();
                temReplays.add(childcomment);
                recursively(commentId);
            }
        }

    }




}
