package com.furmax.controller;

import com.furmax.pojo.Blog;
import com.furmax.pojo.User;
import com.furmax.service.BlogService;
import com.furmax.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

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


    @RequestMapping("/userList")
    public String queryAllUsers(Model model){
        List<User> users = userService.selectAllUser();
        model.addAttribute("userList",users);
        return "blogSysUserManagerUI";
    }

    @RequestMapping("/blogList")
    public String queryAllBlogs(Model model){
        List<Blog> blogs = blogService.queryAllBlogs();
        model.addAttribute("blogList",blogs);
        return "blogSysBlogManagerUI";
    }

    @RequestMapping(value="/userInfo",method = RequestMethod.GET)
    public String queryUserInfo(String userEmail,Model model){
        User userInfo= userService.selectUserByEmail(userEmail);
        model.addAttribute("user",userInfo);
        return "userInfo";
    }
}
