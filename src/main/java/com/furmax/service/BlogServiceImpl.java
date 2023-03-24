package com.furmax.service;

import com.furmax.dao.BlogMapper;
import com.furmax.dao.UserMapper;
import com.furmax.pojo.Blog;
import com.furmax.pojo.BlogTag;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.List;


public class BlogServiceImpl implements BlogService {
    public BlogMapper blogMapper;

    public void setBlogMapper(BlogMapper blogMapper) {
        this.blogMapper = blogMapper;
    }

    @Override
    public List<Blog> queryAllBlogs() {
        return blogMapper.queryAllBlogs();
    }

    @Override
    public int deleteBlog(int blogId) {
        return blogMapper.deleteOneBlog(blogId);
    }

    @Override
    public List<BlogTag> getAllTag() {
        return blogMapper.getAllTag();
    }

    @Override
    public int saveOrUpdateBlogContent(Blog blog) {
        return blogMapper.insertOneBlog(blog);
    }

    @Override
    public Blog queryBlogById(int id) {
        return blogMapper.selectOneBlog(id);
    }

    @Override
    public List<Blog> queryBlogsByBlogMaster(String blogMaster) {
        return blogMapper.queryBlogsByBlogMaster(blogMaster);
    }

}
