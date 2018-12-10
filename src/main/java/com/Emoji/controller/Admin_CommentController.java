package com.Emoji.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Admin_CommentController {

    @RequestMapping("admin/comment")
    public String comment(){
        return "admin/comment";
    }


}
