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
import javax.xml.ws.soap.Addressing;

@Controller
public class Admin_UserController {
    @Autowired
    UserService userService;
    @RequestMapping("/admin/user")
    public String test(Model model){
        model.addAttribute("users",userService.selectAll());
        return "admin/user";

    }
    @RequestMapping(value = "/admin/changeInformation",method = RequestMethod.POST)
    public String change(@ModelAttribute User user, HttpServletRequest request){
        System.out.println("admin/changeInformation: "+user);
        userService.updateByPrimaryKeySelective(user);
        return "redirect:user";
    }
    @RequestMapping(value = "admin/user/delete",method =RequestMethod.GET )
    public String deleteCommentById(int id){
        userService.deleteByPrimaryKey(id);
        return "redirect:/admin/user";
    }
}
