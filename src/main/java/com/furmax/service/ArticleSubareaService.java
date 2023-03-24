package com.furmax.service;

import com.furmax.pojo.Blog;
import com.furmax.pojo.Subarea;

import java.util.List;

public interface ArticleSubareaService {
    List<Subarea> queryArticlesBySubareaName(String subareaName);
    int queryArticleNumBySubareaName(String subareaName);
}
