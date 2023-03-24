package com.furmax.service;

import com.furmax.pojo.Blog;
import com.furmax.pojo.BlogTag;

import java.util.List;

public interface BlogService {
    List<Blog> queryAllBlogs();
    int saveOrUpdateBlogContent(Blog blog);
    List<BlogTag> getAllTag();
    Blog queryBlogById(int id);
    int deleteBlog(int blogId);
    List<Blog> queryBlogsByBlogMaster(String blogMaster);

}
