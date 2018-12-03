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
public class User_LoginController {
    @Autowired
    UserService userService;
    @RequestMapping("/login")
    public String login(){
        return "login";
    }

    @RequestMapping(value = "/LoginTest",method = RequestMethod.POST)
    public String loginTest(@ModelAttribute User user,Model model){
        System.out.println(user.getUsername()+": "+user.getPassword());
        User result = userService.selectLogin(user);
        if (result!=null){
            System.out.println(result);
        }
        if (result!=null){
            model.addAttribute("LoginResult",1);//登录成功
        }
        else
            model.addAttribute("LoginResult",0);//登录失败

        return  "login";

    }

}
