package com.furmax.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.furmax.pojo.Blog;
import com.furmax.pojo.User;
import com.furmax.service.BlogService;
import com.furmax.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;


@CrossOrigin
@RestController
@RequestMapping("/userJson")
public class UserControllerJSONVersion {

    @Autowired
    @Qualifier("UserServiceImpl")
    private UserService userService;
    @Autowired
    @Qualifier("BlogServiceImpl")
    BlogService blogService;

    @RequestMapping("/toRootLogin")
    public String login0(){
        return "login";
    }
    @RequestMapping("/toLoginPage")
    public String login1(){
        return "logintest";
    }

    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public JSONObject login(String userEmail,String password, Model model, HttpSession session){
        System.out.println(userEmail);
        String msg="";
        JSONObject res1 = new JSONObject();

        if ("123456".equals(password) && "admin@qq.com".equals(userEmail)){
            res1.put("userEmail",userEmail);
            res1.put("password",password);
            res1.put("url","adminPage");
            return res1;
        }
//        msg = userService.checkIfUser(user.getUserName(),user.getPassword());
        msg = userService.loginUsingEmail(userEmail,password);
        User user1=userService.selectUserByEmail(userEmail);

        System.out.println(msg);
        if ("邮箱和密码都正确".equals(msg)){
//            将用户信息放在model里
            model.addAttribute("user",user1);
            model.addAttribute("userId",user1.getUserId());
//            若登录成功，则预先查询所有博客并且展示在首页中
            List<Blog> blogList = blogService.queryAllBlogs();
            model.addAttribute("blogList",blogList);
            model.addAttribute("test","11111");
//            将用户名保存至Session中
            session.setAttribute("userName",user1.getUserName());
            System.out.println(blogList);
            res1.put("blogList",blogList);
            res1.put("user",user1);
            res1.put("userId",user1.getUserId());
//            跳转到的路径要在vue路由先设置好。
            res1.put("url","mainPage");
            return res1;
        }
        else if ("邮箱正确但密码错误".equals(msg)){
            model.addAttribute("Msg","邮箱正确但密码错误，请检查！");
            res1.put("error",msg);
            res1.put("url","login");
            return res1;
        }
        else{
            model.addAttribute("Msg","邮箱错误，请检查！");
//            msg也要传入json？
            res1.put("error",msg);
            res1.put("url","login");
            return res1;
        }

//        return "login";
    }


    @RequestMapping("/toBBSHome")
    public String toBBSHome(){
        return "bbsHome";
    }
    //测试一下用ajax
    @RequestMapping("/ajaxLogin")
    @ResponseBody
    public String ajaxLogin(String userName, String password, HttpSession session){
        String msg="";

        msg = userService.checkIfUser(userName,password);

        if ("用户名和密码都正确".equals(msg)){
            session.setAttribute("user",userName);
            return "OK";
        }
        else if ("用户名正确但密码错误".equals(msg)){
            session.setAttribute("Msg","用户名正确但密码错误，请检查！");
        }
        else{
            session.setAttribute("Msg","用户名错误，请检查！");
        }

        return msg;
    }
    @RequestMapping("/toregister")
    public String toRegister(){

        return "signup";
    }
    @RequestMapping("toLogin")
    public String toLogin(){
        return "logintest";
    }

    @RequestMapping(value = "/register",method = RequestMethod.GET)
    public JSONObject register(String password1, String password2, String userEmail,
                               String userName, Model model, HttpServletRequest req){

        User user =new User();
        user.setUserName(userName);
        user.setUserEmail(userEmail);
        System.out.println(user.toString());
        JSONObject res1 = new JSONObject();
        String errorMsg="";


        if (password1.equals(password2)) {
            user.setPassword(password1);
//            随机生成五位数的数字id作为userId
            user.setUserId((int) (1+Math.random() * 100000));
//            测试输出：
//            调用底层方法实现注册信息保存至数据库的功能
            int registerNum = userService.register(user);
            System.out.println("-------------新注册了" + registerNum + "名用户-----------------");
//        注册成功则跳转至登录页面
            res1.put("url","login");
            return res1;
        }
        else {
            errorMsg="两次输入密码不同，请重新检查！";
            model.addAttribute("errorMsg",errorMsg);
            res1.put("errorMsg",errorMsg);
            res1.put("url","signup");
            return res1;
        }
    }

    @RequestMapping("/toMainPage")
    public String toMainPage(){
        return "mainPage";
    }
    @RequestMapping("/toMain")
    public String tomain(Model model){
        List<Blog> blogList = blogService.queryAllBlogs();
        model.addAttribute("blogList",blogList);
        return "main";
    }
    @RequestMapping("/updateUserInfo")
    public String updateUserInfo(){
        return "updateUserInfo";
    }

    @RequestMapping(value="/userInfo",method = RequestMethod.GET)
    public JSONObject queryUserInfo(String userEmail,Model model){
        User userInfo= userService.selectUserByEmail(userEmail);
        List<Blog> blogList = blogService.queryBlogsByBlogMaster(userInfo.getUserName());
        model.addAttribute("user",userInfo);
        model.addAttribute("blogs",blogList);
        JSONObject res = new JSONObject();
        res.put("user",userInfo);
        res.put("blogs",blogList);
        res.put("url","blogSysUserInfoPage");
        return res;
    }
}
