package com.Emoji.controller;

import com.Emoji.entity.User;
import com.Emoji.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class User_LoginController {
    @Autowired
    UserService userService;
    @RequestMapping({"/login","LoginTest"})
    public String login(){
        return "login";
    }

    @RequestMapping(value = "/LoginTest",method = RequestMethod.POST)
    public String loginTest(@ModelAttribute User user, Model model, HttpServletRequest request){
        System.out.println(user.getUsername()+": "+user.getPassword());
        User result = userService.selectLogin(user);
        if (result!=null){
            System.out.println(result);
        }
        if (result!=null){
            model.addAttribute("LoginResult",1);//登录成功
            HttpSession session = request.getSession();
            session.setAttribute("isLogin",true);//登录状态改为ture
            session.setAttribute("userid",result.getUserid());//把登录账户的id放到session里
            session.setAttribute("username",result.getUsername());
            return "index";//登录成功，返回首页
        }
        else
            model.addAttribute("LoginResult",0);//登录失败
        return  "login";
    }
    @RequestMapping("/loginOff")
    public String loginOff(HttpServletRequest request){
        HttpSession session = request.getSession();
        session.setAttribute("userid",null);
        session.setAttribute("username",null);
        session.setAttribute("isLogin",false);
        return "index";
    }
    @RequestMapping("/findkey")
    public String findkeyGet(){
        return "findkey";
    }
    @RequestMapping(value = "/findkey",method = RequestMethod.POST)
    public String findkeyPost(@ModelAttribute User user,Model model){
        int i= userService.findkey(user);
        if (i==1){ //密码找回成功
            String username = userService.findName(user);
            model.addAttribute("username",username);
        }
        model.addAttribute("findKeyResult",i);
        return "findkey";
    }

}
