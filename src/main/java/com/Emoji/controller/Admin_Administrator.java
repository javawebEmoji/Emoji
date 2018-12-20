package com.Emoji.controller;

import com.Emoji.entity.Admin;
import com.Emoji.service.AdminService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;

@Controller
public class Admin_Administrator {
    @Autowired
    AdminService adminService;


    @RequestMapping("admin/administrator")
    public String administrator(@RequestParam(value="pn",defaultValue="1")Integer pn, Model model){
        PageHelper.startPage(pn, 5);

        ArrayList<Admin> admins = adminService.selectAll();

        PageInfo page = new PageInfo(admins,5);
        model.addAttribute("pageInfo", page);

        model.addAttribute("admins",admins);


        return "admin/administrator";
    }
}
