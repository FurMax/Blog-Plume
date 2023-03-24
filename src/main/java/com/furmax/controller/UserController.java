package com.furmax.controller;

import com.furmax.pojo.Blog;
import com.furmax.pojo.User;
import com.furmax.service.BlogService;
import com.furmax.service.UserService;
import org.apache.ibatis.lang.UsesJava7;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("/user")
@CrossOrigin
public class UserController {

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
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String login(User user,Model model,HttpSession session){
        System.out.println(user.getUserEmail());
        String msg="";

        if ("123456".equals(user.getPassword()) && "admin@qq.com".equals(user.getUserEmail())){
            model.addAttribute("user",user);
            return "adminPage";
        }

        if ("123456".equals(user.getPassword()) && "admin1@qq.com".equals(user.getUserEmail())){
            model.addAttribute("user",user);
            return "bmsAdminPage";
        }
//        msg = userService.checkIfUser(user.getUserName(),user.getPassword());
        msg = userService.loginUsingEmail(user.getUserEmail(),user.getPassword());
        User user1=userService.selectUserByEmail(user.getUserEmail());

        System.out.println(msg);
        if ("邮箱和密码都正确".equals(msg)){
//            将用户信息放在model里
            model.addAttribute("user",user);
            model.addAttribute("userId",user.getUserId());
//            若登录成功，则预先查询所有博客并且展示在首页中
            List<Blog> blogList = blogService.queryAllBlogs();
            model.addAttribute("blogList",blogList);
            model.addAttribute("test","11111");
//            将用户名保存至Session中
            session.setAttribute("userName",user1.getUserName());
            return "main";
        }
        else if ("邮箱正确但密码错误".equals(msg)){
            model.addAttribute("Msg","邮箱正确但密码错误，请检查！");
            return "logintest";
        }
        else{
            model.addAttribute("Msg","邮箱错误，请检查！");
            return "logintest";
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
    @RequestMapping("/register")
    public String register(User user,Model model,HttpServletRequest req){
        String password1 = req.getParameter("password1");
        String password2 = req.getParameter("password2");
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
            return "logintest";
        }
        else {
            errorMsg="两次输入密码不同，请重新检查！";
            model.addAttribute("errorMsg",errorMsg);
            return "signup";
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
    public String queryUserInfo(String userEmail,Model model){
        User userInfo= userService.selectUserByEmail(userEmail);
        List<Blog> blogList = blogService.queryBlogsByBlogMaster(userInfo.getUserName());
        model.addAttribute("user",userInfo);
        model.addAttribute("blogs",blogList);
        return "blogSysUserInfoPage";
    }

    @RequestMapping("/toDemoPage")
    public String toDemoPage(){
        return "demo";
    }
    @RequestMapping("/deleteUsers")
    public String deleteUsers(Integer[] users){
        System.out.println("已经删除"+ Arrays.toString(users));
        return "demo";
    }

}
