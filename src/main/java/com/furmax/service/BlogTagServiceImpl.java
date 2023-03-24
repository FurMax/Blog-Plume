package com.furmax.service;

import com.furmax.dao.BlogTagMapper;
import com.furmax.pojo.Blog;

import java.util.List;

public class BlogTagServiceImpl implements BlogTagService {
    private BlogTagMapper blogTagMapper;

    public void setBlogTagMapper(BlogTagMapper blogTagMapper) {
        this.blogTagMapper = blogTagMapper;
    }

    @Override
    public List<Blog> queryBlogsByBlogTag(String blogTag) {
        int tagId = blogTagMapper.queryBlogTagByTagName(blogTag);
//        由于blog表对应tag处值实际上为tagId，所以需要做此转换的操作
        String blogTag1=String.valueOf(tagId);
        return blogTagMapper.queryBlogsByBlogTag(blogTag1);

    }

    @Override
    public int queryBlogNumBYBlogTag(String blogTag) {
        int tagId = blogTagMapper.queryBlogTagByTagName(blogTag);
//        由于blog表对应tag处值实际上为tagId，所以需要做此转换的操作
        String blogTag1=String.valueOf(tagId);
        return blogTagMapper.queryBlogsNumByBlogTag(blogTag1);
    }



}
