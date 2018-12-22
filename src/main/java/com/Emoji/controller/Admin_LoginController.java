package com.Emoji.controller;

import com.Emoji.entity.Admin;
import com.Emoji.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;


@Controller
public class Admin_LoginController {
    @RequestMapping("/admin")
    public String tologin(){
        return "redirect:admin/login";

    }
    @RequestMapping("/admin/login")
    public String login(){
        return "admin/login";

    }
    @Autowired
    private AdminService adminService;
    @ResponseBody
    @RequestMapping(value="admin/loginAjax",produces="application/json; charset=UTF-8")
    public Map<String, Object> login(@RequestParam("admin_account")String admin_account,
                                     @RequestParam("admin_password")String admin_password,
                                     HttpSession session
            ){
        try {
            System.out.println(admin_account+" "+admin_password);

            Map<String, Object> params = new HashMap<>();
            params.put("session",session);
            params.put("admin_account", admin_account);
            params.put("admin_password", admin_password);
            Map<String, Object> result = adminService.login(params);
            return result;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}

