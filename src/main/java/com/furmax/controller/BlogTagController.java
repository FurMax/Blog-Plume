package com.furmax.controller;

import com.furmax.pojo.Blog;
import com.furmax.service.BlogService;
import com.furmax.service.BlogTagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
@RequestMapping("/blogTag")
public class BlogTagController {
    @Autowired
    @Qualifier("BlogTagServiceImpl")
    BlogTagService blogtagService;

    @RequestMapping(value = "queryAll",method = RequestMethod.GET)
    public String queryAllBlogsByBlogTag(String blogTag, Model model){
        List<Blog> blogList = blogtagService.queryBlogsByBlogTag(blogTag);
        int blogsNum = blogtagService.queryBlogNumBYBlogTag(blogTag);
        model.addAttribute("blogList",blogList);
        model.addAttribute("blogsNum",blogsNum);
        String url="blogTagDisplay_"+blogTag;
        return url;
    }
}
