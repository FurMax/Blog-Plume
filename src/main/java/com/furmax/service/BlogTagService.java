package com.furmax.service;

import com.furmax.pojo.Blog;

import java.util.List;

public interface BlogTagService {
    List<Blog> queryBlogsByBlogTag(String blogTag);
    int queryBlogNumBYBlogTag(String blogTag);


}
