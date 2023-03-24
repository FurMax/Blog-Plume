package com.furmax.service;

import com.furmax.dao.ArticleMapper;
import com.furmax.dao.SubareaMapper;
import com.furmax.pojo.Subarea;

import java.util.List;

public class ArticleSubareaServiceImpl implements ArticleSubareaService{

    public SubareaMapper subareaMapper;
    public void setSubareaMapper(SubareaMapper subareaMapper) {
        this.subareaMapper = subareaMapper;

    }
    @Override
    public List<Subarea> queryArticlesBySubareaName(String subareaName) {
        int subareaId = subareaMapper.queryArticlesNumBySubareaName(subareaName);
        String subareaName1=String.valueOf(subareaId);
        return subareaMapper.queryArticlesBySubareaName(subareaName1);

    }

    @Override
    public int queryArticleNumBySubareaName(String subareaName) {
        int subareaId = subareaMapper.queryArticlesNumBySubareaName(subareaName);
        String subareaName1=String.valueOf(subareaId);
        return subareaMapper.queryArticlesNumBySubareaName(subareaName1);
    }
}
