package com.Emoji.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Admin_UserController {
    @RequestMapping("/admin/user")
    public String test(){
        return "admin/user";

    }
}
