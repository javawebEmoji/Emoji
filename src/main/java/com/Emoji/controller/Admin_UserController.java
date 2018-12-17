package com.Emoji.controller;

import com.Emoji.entity.User;
import com.Emoji.service.UserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.xml.ws.soap.Addressing;
import java.util.ArrayList;

@Controller
public class Admin_UserController {
    @Autowired
    UserService userService;
    @RequestMapping("/admin/user")
    public String test(@RequestParam(value="pn",defaultValue="1")Integer pn, Model model){
        //从第一条开始，每页查询5条数据
        PageHelper.startPage(pn,5);
        ArrayList<User> users = userService.selectAll();
        PageInfo userPage = new PageInfo(users,5);
        model.addAttribute("userPage",userPage);
        model.addAttribute("users",users);
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
