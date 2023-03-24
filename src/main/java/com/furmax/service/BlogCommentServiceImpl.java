package com.furmax.service;

import com.furmax.dao.BlogCommentMapper;
import com.furmax.pojo.BlogComment;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class BlogCommentServiceImpl implements BlogCommentService{


    private BlogCommentMapper blogCommentMapper;

    public void setBlogCommentMapper(BlogCommentMapper blogCommentMapper) {
        this.blogCommentMapper = blogCommentMapper;
    }

    //存放迭代找出的所有子代的集合
    private List<BlogComment> tempReplys = new ArrayList<>();


    public List<BlogComment> listComment(int blogId) {
        //查询出父节点
        List<BlogComment> comments = blogCommentMapper.findByParentIdNull(Long.parseLong("-1"),blogId);
        for(BlogComment comment : comments){
            Long id = comment.getId();
            String parentNickname1 = comment.getNickname();
            List<BlogComment> childComments = blogCommentMapper.findByParentIdNotNull(id);
            //查询出子评论
            combineChildren(childComments, parentNickname1);
            comment.setReplyComments(tempReplys);       
            tempReplys = new ArrayList<>();
        }
        return comments;
    }


    private void combineChildren(List<BlogComment> childComments, String parentNickname1) {
        //判断是否有一级子回复
        if(childComments.size() > 0){
            //循环找出子评论的id
            for(BlogComment childComment : childComments){
                String parentNickname = childComment.getNickname();
                childComment.setParentNickname(parentNickname1);
                tempReplys.add(childComment);
                Long childId = childComment.getId();
                //查询二级以及所有子集回复
                recursively(childId, parentNickname);
            }
        }
    }


    private void recursively(Long childId, String parentNickname1) {
        //根据子一级评论的id找到子二级评论
        List<BlogComment> replayComments = blogCommentMapper.findByReplayId(childId);

        if(replayComments.size() > 0){
            for(BlogComment replayComment : replayComments){
                String parentNickname = replayComment.getNickname();
                replayComment.setParentNickname(parentNickname1);
                Long replayId = replayComment.getId();
                tempReplys.add(replayComment);
                //循环迭代找出子集回复
                recursively(replayId,parentNickname);
            }
        }
    }

    @Override
    //存储评论信息
    public int saveComment(BlogComment comment) {
        comment.setCreate_time(new Date());
        return blogCommentMapper.saveComment(comment);
    }

    @Override
    public int getCommentsNum(int blogId) {
        return blogCommentMapper.getCommentsNum(blogId);
    }
}
