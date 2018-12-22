package com.Emoji.dao;

import com.Emoji.entity.Admin;
import com.Emoji.entity.User;

import java.util.ArrayList;

public interface AdminMapper {

    int insertSelective(Admin record);

    int updateByPrimaryKeySelective(Admin record);


    //管理员登陆
    Admin getUserByAdmin_account(String admin_account);
    //人员管理
    ArrayList<Admin> selectAll();
    int insert(Admin admin);
    int deleteByPrimaryKey(int admin_id);
    int updateByPrimaryKey(Admin record);
}