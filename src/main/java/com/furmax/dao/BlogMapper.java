package com.furmax.dao;

import com.furmax.pojo.Blog;
import com.furmax.pojo.BlogTag;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;


public interface BlogMapper {

    int insertOneBlog(Blog blog);

    int deleteOneBlog(@Param("blogId") int id);

    int updateBlog(Blog blog);
//    后台管理方法：
    Blog selectOneBlog(@Param("blogId") int id);
//    批量查询所有博文:

    List<Blog> queryAllBlogs();

    List<BlogTag> getAllTag();

    List<Blog> queryBlogsByBlogMaster(@Param("blogMaster") String blogMaster);


}
