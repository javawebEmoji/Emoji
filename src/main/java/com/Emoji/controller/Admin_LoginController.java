package com.Emoji.controller;

import com.Emoji.entity.Admin;
import com.Emoji.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import java.util.HashMap;
import java.util.Map;


@Controller
public class Admin_LoginController {
    @RequestMapping({"/admin","/admin/login"})
    public String test(){
        return "admin/login";

    }
    @Autowired
    private AdminService adminService;
    @RequestMapping("/admin/loginTest")
    public String logintest(@RequestParam("admin_username")String admin_username,
                            @RequestParam("admin_password")String admin_password ){
        System.out.println(admin_username+" "+admin_password);
        Admin admin = new Admin();
        admin.setAdmin_name(admin_username);
        admin.setAdmin_name(admin_password);
        Admin admin1=adminService.login(admin);
        if (admin!=null) return "/admin/home";
        else return "/admin";
    }

    @ResponseBody  // 异步请求的响应结果
    @RequestMapping(value="/loginAjax",produces="application/json; charset=UTF-8")
    public Map<String, Object> login(@RequestParam("admin_username")String admin_username,
                                     @RequestParam("admin_password")String admin_password
            ){
        try {
            Map<String, Object> params = new HashMap<>();
            params.put("admin_username", admin_username);
            params.put("admin_password", admin_password);
            // 响应数据啊,写回去数据
//            Map<String, Object> result = identityService.login(params);
            Map<String,Object> result = new HashMap<>();
            result.put("status",1);
            result.put("tip","登陆成功");
            return result;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}

