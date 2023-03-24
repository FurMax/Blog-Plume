package com.furmax.dao;

import com.furmax.pojo.Blog;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BlogTagMapper {
    List<Blog> queryBlogsByBlogTag(@Param("blogTag") String tagId);

    int queryBlogTagByTagName(@Param("tagName") String tagName);

    int queryBlogsNumByBlogTag(@Param("blogTag") String tagId);


}
