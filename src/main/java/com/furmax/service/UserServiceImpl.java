package com.furmax.service;

import com.furmax.dao.UserMapper;
import com.furmax.pojo.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

public class UserServiceImpl implements UserService {
    private UserMapper userMapper;

    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

//    注册功能的实现：即将注册表单中的数据全部插入user表中
    @Override
    public int register(User user) {

        return userMapper.insertUser(user);
    }

    @Override
    public int deleteUserById(int id) {
        return userMapper.deleteUserById(id);
    }

    @Override
    public int updateUser(User user) {
        return userMapper.updateUser(user);
    }

    @Override
    public String loginUsingEmail(String userEmail, String password) {
        User user = userMapper.selectUserByUserEmail(userEmail);
        String msg="";
        if (user!=null){
//            开始匹配密码是否正确
            if(password.equals(user.getPassword())){
                msg = "邮箱和密码都正确";
            }
            else {
                msg="邮箱正确但密码错误";
            }

        }else{
            msg="邮箱错误";
        }

        return msg;
    }


    @Override
    public String checkIfUser(String userName,String password) {
        User user = userMapper.selectUserByUserName(userName);
        String msg="";
        if (user!=null){
//            开始匹配密码是否正确
            if(password.equals(user.getPassword())){
                msg = "用户名和密码都正确";
            }
            else {
                msg="用户名正确但密码错误";
            }

        }else{
            msg="用户名错误";
        }

        return msg;
    }

    @Override
    public User selectUserByEmail(String userEmail) {
        return userMapper.selectUserByUserEmail(userEmail);
    }

    @Override
    public User queryUserInfo() {
        return null;
    }

    @Override
    public List<User> selectAllUser() {
        System.out.println(userMapper.selectAllUser().toString());
        return userMapper.selectAllUser();
    }
}
