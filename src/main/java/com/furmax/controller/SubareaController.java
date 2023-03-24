package com.furmax.controller;

import com.furmax.pojo.Article;
import com.furmax.pojo.Subarea;
import com.furmax.service.ArticleService;
import com.furmax.service.ArticleSubareaService;
import com.furmax.service.BlogTagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;
@Controller
@RequestMapping("/subarea")
public class SubareaController {
    @Autowired
    @Qualifier("ArticleSubareaServiceImpl")
    ArticleSubareaService articleSubareaService;

    @Autowired
    @Qualifier("ArticleServiceImpl")
    ArticleService articleService;

    @RequestMapping(value = "/queryAllArticlesBySubarea",method = RequestMethod.GET)
    public String queryAllArticlesBySubareaName(Model model,String subareaName){
//        List<Subarea> articlesList = articleSubareaService.queryArticlesBySubareaName(subareaName);
//        int articlesNum = articleSubareaService.queryArticleNumBySubareaName(subareaName);
        List<Article> mostHotArticleList = articleService.queryAllArticlesBySubareaIdOrderByCommentsNum(subareaName);
        List<Article> latestArticleList = articleService.queryAllArticlesByCreateTime(subareaName);
        List<Article> mostLikeArticleList = articleService.queryAllArticlesBySubareaIdOrderByLikesNum(subareaName);

        model.addAttribute("mostHotArticleList",mostHotArticleList);
        model.addAttribute("mostLikeArticleList",mostLikeArticleList);
        model.addAttribute("latestArticleList",latestArticleList);

//        model.addAttribute("articlesList",articlesList);
//        model.addAttribute("articlesNum",articlesNum);
        String url = "subarea_"+subareaName;
        return url;
    }
}
