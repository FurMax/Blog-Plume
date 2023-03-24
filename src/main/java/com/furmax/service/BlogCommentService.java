package com.furmax.service;

import com.furmax.pojo.BlogComment;

import java.util.List;

public interface BlogCommentService {
    //查询评论列表
    List<BlogComment> listComment(int blogId);

    //保存评论
    int saveComment(BlogComment comment);

    int getCommentsNum(int blogId);


}
