package com.furmax.service;

import com.furmax.pojo.User;

import java.util.List;

public interface UserService {

    int register(User user);
    int deleteUserById(int id);
    int updateUser(User user);
    String checkIfUser(String userName,String password);
    String loginUsingEmail(String userEmail,String password);
    User selectUserByEmail(String userEmail);
    List<User> selectAllUser();
    User queryUserInfo();
}
