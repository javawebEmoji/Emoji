package com.Emoji.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class ThelatestController {
    @RequestMapping("/thelatest")
    public String test(){
        return "thelatest";
    }
}