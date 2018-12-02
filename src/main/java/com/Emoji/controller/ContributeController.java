package com.Emoji.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ContributeController {
    @RequestMapping("/contribute")
    public String test(){
        return "contribute";

    }
}