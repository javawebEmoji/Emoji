package com.Emoji.controller;

import com.Emoji.entity.User;
import com.Emoji.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class User_RegisterController {
    @Autowired
    UserService userService;
    @RequestMapping("/register")
    public String register(){
        return "register";
    }
    @RequestMapping(value = "/registerTest",method = RequestMethod.POST)
    public String registerTest(@ModelAttribute User user,Model model){
        System.out.println(user);
        int i = userService.insertSelective(user);
        System.out.println(i);
        if (i==1){
            model.addAttribute("registerResult",1);
        }
        else model.addAttribute("registerResult",0);
        return "register";
    }
}
