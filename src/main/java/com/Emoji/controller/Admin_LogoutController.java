package com.Emoji.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class Admin_LogoutController {
    @RequestMapping("admin/logout")
    public String logout(HttpSession session) throws Exception {
        session.setAttribute("isAdminLogin",null);
        return "redirect:login";
    }
}
