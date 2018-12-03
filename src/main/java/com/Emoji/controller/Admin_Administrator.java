package com.Emoji.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Admin_Administrator {
    @RequestMapping("/admin/administrator")
    public String test(){
        return "admin/administrator";

    }
}
