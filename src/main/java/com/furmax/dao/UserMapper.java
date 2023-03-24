package com.furmax.dao;

import com.furmax.pojo.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

public interface UserMapper {
    int insertUser(User user);
    int deleteUserById(@Param("userId") int id);
    int updateUser(User user);
    User selectUserByUserName(@Param("userName") String userName);
    User selectUserByUserEmail(@Param("userEmail")String userEmail);
    User selectUserById(@Param("userId") int id);
    List<User> selectAllUser();
}
