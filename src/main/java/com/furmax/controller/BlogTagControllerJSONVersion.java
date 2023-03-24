package com.furmax.controller;

import com.alibaba.fastjson.JSONObject;
import com.furmax.pojo.Blog;
import com.furmax.service.BlogTagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("/blogTagJson")
public class BlogTagControllerJSONVersion {
    @Autowired
    @Qualifier("BlogTagServiceImpl")
    BlogTagService blogtagService;

    @RequestMapping(value = "queryAll",method = RequestMethod.GET)
    public JSONObject queryAllBlogsByBlogTag(String blogTag, Model model){
        System.out.println("搜索blogTag下的所有文章！");
        System.out.println(blogTag);
        List<Blog> blogList = blogtagService.queryBlogsByBlogTag(blogTag);
        int blogsNum = blogtagService.queryBlogNumBYBlogTag(blogTag);
        JSONObject res1 = new JSONObject();
        model.addAttribute("blogList",blogList);
        model.addAttribute("blogsNum",blogsNum);
        String url="blogTagDisplay_"+blogTag;
        res1.put("blogList",blogList);
        res1.put("blogsNum",blogsNum);
        res1.put("url",url);
        return res1;
    }
}
