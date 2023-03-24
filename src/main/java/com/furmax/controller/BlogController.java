package com.furmax.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.furmax.pojo.Blog;
import com.furmax.pojo.BlogComment;
import com.furmax.pojo.BlogTag;
import com.furmax.service.BlogCommentService;
import com.furmax.service.BlogService;

import org.apache.commons.io.FileUtils;
import org.apache.tomcat.util.http.fileupload.FileItemFactory;
import org.apache.tomcat.util.http.fileupload.FileUploadException;
import org.apache.tomcat.util.http.fileupload.RequestContext;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import org.apache.commons.fileupload.FileItem;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.w3c.dom.ls.LSException;


import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.File;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.*;

import static sun.management.Agent.error;


@Controller
@RequestMapping("/blog")
public class BlogController {
    @Autowired
    @Qualifier("BlogServiceImpl")
    BlogService blogService;

    @Autowired
    @Qualifier("BlogCommentServiceImpl")
    BlogCommentService blogCommentService;


    @RequestMapping("/queryAll")
    public String queryAllBlogs(Model model){
        List<Blog> blogList = blogService.queryAllBlogs();
        model.addAttribute("blogList",blogList);
        model.addAttribute("test","11111");
//此处不能用redirect，否则前端不能直接使用${blogList}
        return "main";
    }
//完成跳转至博客详情页并且展示博客内容以及底下所有评论的功能:
    @RequestMapping(value = "/queryBlogById",method = RequestMethod.GET)
    public String queryBlogById(int blogId,Model model){
        Blog blog = blogService.queryBlogById(blogId);
        model.addAttribute("blog",blog);

//        评论初始化：
        int totalComment=0;
        List<BlogComment> comments = blogCommentService.listComment(blogId);
        for (BlogComment blogComment:comments
        ) {
            totalComment++;
        }
        model.addAttribute("totalComment",totalComment);
        model.addAttribute("articleComments", comments);


        return "blogDisplay";
//        return blog.getBlogTitle();
    }

    @RequestMapping("/toInsertBlog")
    public String toInsertBlogPage(){
        return "insertBlog";
    }

    @RequestMapping(value = "/saveOrUpdateBlog", method = RequestMethod.POST)
    @ResponseBody
    public String saveOrUpdateBlog (@RequestParam("title")String title , @RequestParam("content")String content,
                                   @RequestParam("tagId")String tagIdStr,@RequestParam("summary") String summary,
                                    HttpSession session) {

        Blog blog = new Blog();
//        其实以下代码可以写在Service层更加规范
        blog.setBlogTitle(title);
        blog.setBlogContent(content);
        blog.setCreateTime(new Date());
        blog.setBlogTag(tagIdStr);
        blog.setBlogSummary(summary);
        blog.setBlogMaster((String) session.getAttribute("userName"));
//        上传文章封面图片后面再加 blogId可有可无，看看后面需不需要用到，先留着。

        JSONObject result = new JSONObject();
        try {
            int msg = blogService.saveOrUpdateBlogContent(blog);
            System.out.println("新写了"+msg+"篇博客~~~");
            result.put("result","success");
            return result.toJSONString();
        } catch (Exception e) {
            error("保存文章报错:{}"+e);
            result.put("result","error");
            return result.toJSONString();
        }
    }

    @RequestMapping("/imgUpload")
    @ResponseBody
    public JSONObject editormdPic (@RequestParam(value = "editormd-image-file", required = true) MultipartFile file,
                                   HttpServletRequest request,
                                   HttpServletResponse response) throws Exception{

        String trueFileName = file.getOriginalFilename();

        String suffix = trueFileName.substring(trueFileName.lastIndexOf("."));

        String fileName = UUID.randomUUID().toString().replace("-","")+suffix;

        String path = request.getSession().getServletContext().getRealPath("upload");


        File targetFile = new File(path, fileName);
        if(!targetFile.exists()){
            targetFile.mkdirs();
        }

        //保存
        try {
            file.transferTo(targetFile);
        } catch (Exception e) {
            e.printStackTrace();
        }


        JSONObject res = new JSONObject();
        //这就是返回给页面的json数据
        res.put("url",request.getContextPath()+"/upload/"+fileName);
        res.put("success", 1);
        res.put("message", "upload success!");

        return res;

    }



    @RequestMapping("/getAllBlogTag")
    @ResponseBody
    private String getAllBlogTag(Model model){
        List<BlogTag> blogTagList = blogService.getAllTag();
        model.addAttribute("blogTagList",blogTagList);
        String result=JSON.toJSONString(blogTagList);
        System.out.println(result);
        return result;
    }
}




