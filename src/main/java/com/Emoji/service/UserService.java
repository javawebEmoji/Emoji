package com.Emoji.service;

import com.Emoji.dao.UserMapper;
import com.Emoji.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    UserMapper userMapper;
    public User selectLogin(User record){
        return userMapper.selectLogin(record);
    }
    public int insertSelective(User record){
        return userMapper.insertSelective(record);
    }
}
