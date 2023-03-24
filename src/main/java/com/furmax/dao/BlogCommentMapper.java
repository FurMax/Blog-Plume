package com.furmax.dao;

import com.furmax.pojo.BlogComment;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BlogCommentMapper {
    //添加一个评论
    int saveComment(BlogComment comment);

    //查询父级评论
    List<BlogComment> findByParentIdNull(@Param("parentCommentId") Long parentCommentId,@Param("blogId")int blogId );

    //查询一级回复
    List<BlogComment> findByParentIdNotNull(@Param("id") Long id);

    //查询二级以及所有子集回复
    List<BlogComment> findByReplayId(@Param("childId") Long childId);

    int getCommentsNum(@Param("blogId") int blogId);


}
