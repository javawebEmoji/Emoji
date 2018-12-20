package com.Emoji.dao;

import com.Emoji.entity.Admin;
import com.Emoji.entity.User;

import java.util.ArrayList;

public interface AdminMapper {
    int deleteByPrimaryKey(String admin_name);

    int insert(Admin record);

    int insertSelective(Admin record);

    Admin selectByPrimaryKey(String admin_name);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);

    //管理员登陆
    Admin selectLogin(Admin record);
    Admin getUserByAdmin_account(String admin_account);
    //人员管理
    ArrayList<Admin> selectAll();

}