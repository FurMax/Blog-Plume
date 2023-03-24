package com.furmax.test;

import com.furmax.service.UserService;
import com.furmax.service.UserServiceImpl;

public class demo1 {
    public static void main(String[] args) {
        UserService userService = new UserServiceImpl();
        System.out.println(userService.selectAllUser().toString());
    }
}
