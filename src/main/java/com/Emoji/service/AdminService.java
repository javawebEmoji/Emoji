package com.Emoji.service;

import com.Emoji.dao.AdminMapper;
import com.Emoji.entity.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminService {
    @Autowired
    AdminMapper adminMapper;
    public Admin login(Admin record){
      return adminMapper.login(record);
    }
}
