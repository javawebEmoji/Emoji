package com.Emoji.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
    @RequestMapping("/admin/user")
    public String test(){
        return "admin/user";

    }
}
