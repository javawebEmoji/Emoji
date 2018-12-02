package com.Emoji.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
    @RequestMapping({"/admin","/admin/login"})
    public String test(){
        return "admin/login";

    }
}

