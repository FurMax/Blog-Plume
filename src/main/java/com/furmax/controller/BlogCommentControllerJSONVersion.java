package com.furmax.controller;

import com.alibaba.fastjson.JSONObject;
import com.furmax.pojo.BlogComment;
import com.furmax.service.BlogCommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("/blogCommentJson")
public class BlogCommentControllerJSONVersion {

    @Autowired
    private BlogCommentService commentService;

    @RequestMapping("/toCommentPage")
    public String toCommentPage(){
        return "comment";
    }
    //    需要修改 ！！！！！
    @RequestMapping("/listComments")
    public String comments(int blogId, Model model) {
        int totalComment=0;
        List<BlogComment> comments = commentService.listComment(blogId);
        int commentsNum = commentService.getCommentsNum(blogId);

        for (BlogComment blogComment:comments
        ) {
            totalComment++;
        }
        model.addAttribute("totalComment",totalComment);
        model.addAttribute("commentsNum",commentsNum);
        model.addAttribute("comments", comments);
        return "comment";
    }

    @ResponseBody
    @RequestMapping(value = "/saveComments",method = RequestMethod.GET)
    public String post(Long parentComment_id,String nickname,String email,String content,int blogId) {
        BlogComment blogComment = new BlogComment();
        blogComment.setParentCommentId(parentComment_id);
        blogComment.setNickname(nickname);
        blogComment.setEmail(email);
        blogComment.setContent(content);
        blogComment.setBlogId(blogId);
        blogComment.setParentComment(new BlogComment());
        System.out.println(blogComment.toString());
        System.out.println(blogComment.getParentComment().toString());
        JSONObject result = new JSONObject();
        //设置头像
        if (blogComment.getParentComment().getId() != null) {
            blogComment.setParentCommentId(blogComment.getParentComment().getId());
        }
        commentService.saveComment(blogComment);
        result.put("result","success");
        System.out.println(result.toJSONString());
        return result.toJSONString();
    }
}
