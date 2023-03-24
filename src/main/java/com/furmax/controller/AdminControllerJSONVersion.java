package com.furmax.controller;

import com.alibaba.fastjson.JSONObject;
import com.furmax.pojo.Blog;
import com.furmax.pojo.User;
import com.furmax.service.BlogService;
import com.furmax.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("/adminJson")
public class AdminControllerJSONVersion {
    @Autowired
    @Qualifier("UserServiceImpl")
    private UserService userService;
    @Autowired
    @Qualifier("BlogServiceImpl")
    BlogService blogService;

    @RequestMapping("toSystemDemo1")
    public String toBooksSharingSysAdminPage(){
        return "booksSharingSystemAdminPage";
    }

    @RequestMapping("/toAdminPage")
    public String toAdminPage(){
        return "adminPage";
    }


    @RequestMapping("/toAdminWelcomePage")
    public String toAdminWelcomePage(){
        return "adminWelcomePage";
    }


    @RequestMapping("/updateUserInfos")
    public String updateUserInfos(User user){
        userService.updateUser(user);
        String result = "success";
        return JSONObject.toJSONString(result);
    }
    @RequestMapping("/deleteUser")
    public String deleteUser(int userId){
        userService.deleteUserById(userId);
        String result = "success";
        return JSONObject.toJSONString(result);
    }
    @RequestMapping("/userList")
    public JSONObject queryAllUsers(Model model){
        JSONObject res1 = new JSONObject();
        List<User> users = userService.selectAllUser();
        model.addAttribute("userList",users);
        res1.put("userList",users);
        return res1;
    }

    @RequestMapping("/blogList")
    public JSONObject queryAllBlogs(Model model){
        JSONObject res1 = new JSONObject();
        List<Blog> blogs = blogService.queryAllBlogs();
        model.addAttribute("blogList",blogs);
        res1.put("blogList",blogs);
        return res1;
    }

    @RequestMapping("/deleteBlog")
    public String deleteBlog(int blogId){
        blogService.deleteBlog(blogId);
        String result = "success";
        return JSONObject.toJSONString(result);
    }


    @RequestMapping(value="/userInfo",method = RequestMethod.GET)
    public String queryUserInfo(String userEmail,Model model){
        User userInfo= userService.selectUserByEmail(userEmail);
        model.addAttribute("user",userInfo);
        return "userInfo";
    }
}
