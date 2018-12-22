package com.Emoji.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Admin_AdminInfoController {
    @RequestMapping("admin/adminInfo")
    public String adminInfo(){
        return"admin/adminInfo";
    }
}
