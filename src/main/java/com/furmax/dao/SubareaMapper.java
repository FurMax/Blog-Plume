package com.furmax.dao;

import com.furmax.pojo.Subarea;
import com.furmax.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SubareaMapper {
    List<Subarea> queryArticlesBySubareaName(@Param("subareaName") String subareaName);

    int queryArticlesSubareaIdBySubareaName(@Param("subareaName") String subareaName);

    int queryArticlesNumBySubareaName(@Param("subareaName") String subareaName);


//    作者榜
    List<User> queryBestAuthorByArticleNum();
}
