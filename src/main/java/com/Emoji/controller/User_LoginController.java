package com.Emoji.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class User_LoginController {
    @RequestMapping("/login")
    public String login(){
        return "login";
    }
}
