package com.Emoji.dao;

import com.Emoji.entity.Admin;
import com.Emoji.entity.User;

public interface AdminMapper {
    int deleteByPrimaryKey(String admin_name);

    int insert(Admin record);

    int insertSelective(Admin record);

    Admin selectByPrimaryKey(String admin_name);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);

    Admin selectLogin(Admin record);
    Admin getUserByAdmin_account(String admin_account);
}