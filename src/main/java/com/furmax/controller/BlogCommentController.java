package com.furmax.controller;

import com.alibaba.fastjson.JSONObject;
import com.furmax.pojo.BlogComment;
import com.furmax.service.BlogCommentService;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class BlogCommentController {
    @Autowired
    private BlogCommentService commentService;



    @RequestMapping("/comment/toCommentPage")
    public String toCommentPage(){
        return "comment";
    }
//    需要修改 ！！！！！
    @RequestMapping("/comment/listComments")
    public JSONObject comments(int blogId,Model model) {
        JSONObject res1 = new JSONObject();
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

        res1.put("totalComments",totalComment);
        res1.put("commentsNum",commentsNum);
        res1.put("comments",comments);
        res1.put("url","comment");
        return res1;
    }

    @ResponseBody
    @RequestMapping("/comment/saveComments")
    public String post(BlogComment blogComment, HttpServletRequest request) {
        JSONObject result = new JSONObject();
        String avatar = request.getParameter("avatar");
        //设置头像
        blogComment.setAvatar(avatar);
        System.out.println(blogComment);
        System.out.println(blogComment.getParentComment());
        if (blogComment.getParentComment().getId() != null) {
            blogComment.setParentCommentId(blogComment.getParentComment().getId());
        }
        commentService.saveComment(blogComment);
        result.put("result","success");
        System.out.println(result.toJSONString());
        return result.toJSONString();
    }
}
