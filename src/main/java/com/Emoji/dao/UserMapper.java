package com.Emoji.dao;

import com.Emoji.entity.User;

import java.util.ArrayList;

public interface UserMapper {
    int deleteByPrimaryKey(Integer userid);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer userid);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    int changeInformation(User record);
    User selectLogin(User record);
    ArrayList<User> selectSelective(User record);
    int findkey(User record);
}