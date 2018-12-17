package com.Emoji.service;

import com.Emoji.dao.UserMapper;
import com.Emoji.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;

@Service
public class UserService {
    @Autowired
    UserMapper userMapper;
    public User selectLogin(User record){
        User result = new User();
        return userMapper.selectLogin(record);
    }
    public int insertSelective(User record){

        return userMapper.insertSelective(record);
    }
    public ArrayList<User> selectSelective(User record){
       return userMapper.selectSelective(record);
    }
    public int registerTest(User user){ //注册
        User test = new User();
        test.setPhone(user.getPhone());
        ArrayList<User> result = selectSelective(test);
        if (result.size()>0)
            return  2;//手机号码已经被注册
        test.setPhone(null);
        test.setUsername(user.getUsername());
        result = selectSelective(test);
        if (result.size()>0)
            return 3;//该用户名已经被注册
        user.setCreatetime(new Date());
        int i = insertSelective(user);
        return i;

    }
    public int findkey(User user){ //找回密码
        User test = new User();
        test.setPhone(user.getPhone());
        ArrayList<User> result = selectSelective(test);
        if (result.size()==0)
            return  2;//该手机号码不存在
        return userMapper.findkey(user);
    }
    public String findName(User user){ //找回用户名
        ArrayList<User> result = selectSelective(user);
        return result.get(0).getUsername();
    }
    public User PersonalInformation(Integer userid){ //通过用户id返回部分个人信息（保证账号信息的隐私性和安全性）
        User user = userMapper.selectByPrimaryKey(userid);
        User result = new User();
        result.setUsername(user.getUsername());
        result.setEmail(user.getEmail());
        result.setSex(user.getSex());
        result.setBirthday(user.getBirthday());
        result.setHobby(user.getHobby());
        return result;
    }
    public int changeInformation(User user){
        return userMapper.changeInformation(user);
    }
    public int updateByPrimaryKeySelective(User user){
        return userMapper.updateByPrimaryKeySelective(user);
    }
    public int deleteByPrimaryKey(Integer userid){
        return  userMapper.deleteByPrimaryKey(userid);
    }
    public ArrayList<User>  selectAll(){
        return userMapper.selectAll();
    }
}
