package com.Emoji.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Admin_HomeController {
    @RequestMapping("/admin/home")
    public String test(){
        return "admin/home";

    }
}
