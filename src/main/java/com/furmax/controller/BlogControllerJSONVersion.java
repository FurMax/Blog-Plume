package com.furmax.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.furmax.pojo.Blog;
import com.furmax.pojo.BlogComment;
import com.furmax.pojo.BlogTag;
import com.furmax.service.BlogCommentService;
import com.furmax.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import static sun.management.Agent.error;
@CrossOrigin
@RestController
@RequestMapping("blogJson")
public class BlogControllerJSONVersion {
    @Autowired
    @Qualifier("BlogServiceImpl")
    BlogService blogService;

    @Autowired
    @Qualifier("BlogCommentServiceImpl")
    BlogCommentService blogCommentService;


    @RequestMapping("/queryAll")
    @ResponseBody
    public JSONObject queryAllBlogs(Model model){
        List<Blog> blogList = blogService.queryAllBlogs();
        model.addAttribute("blogList",blogList);
        model.addAttribute("test","11111");
//此处不能用redirect，否则前端不能直接使用${blogList}
        JSONObject res = new JSONObject();

        res.put("blogList",blogList);
        res.put("url","main");

        return res;
    }
    //完成跳转至博客详情页并且展示博客内容以及底下所有评论的功能:
    @RequestMapping(value = "/queryBlogById",method = RequestMethod.GET)
    @ResponseBody
    public JSONObject queryBlogById(int blogId,Model model){
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
        model.addAttribute("comments", comments);


        JSONObject res = new JSONObject();

        res.put("blog",blog);
        res.put("comments",comments);
        res.put("url","blogDisplay");

        return res;
//        return blog.getBlogTitle();
    }

    @RequestMapping("/toInsertBlog")
    public String toInsertBlogPage(){
        return "insertBlog";
    }

    @RequestMapping(value = "/saveOrUpdateBlog", method = RequestMethod.GET)
    @ResponseBody
    public String saveOrUpdateBlog (String title , String content,
                                    String tagId,  String summary,
                                    HttpSession session) {

        Blog blog = new Blog();
//        其实以下代码可以写在Service层更加规范
        blog.setBlogTitle(title);
        blog.setBlogContent(content);
        blog.setCreateTime(new Date());
        blog.setBlogTag(tagId);
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
    private JSONObject getAllBlogTag(Model model){
        List<BlogTag> blogTagList = blogService.getAllTag();
        JSONObject res1 = new JSONObject();
        model.addAttribute("blogTagList",blogTagList);
        res1.put("blogTagList",blogTagList);
        String result= JSON.toJSONString(blogTagList);
        System.out.println(result);
        return res1;
    }
}
