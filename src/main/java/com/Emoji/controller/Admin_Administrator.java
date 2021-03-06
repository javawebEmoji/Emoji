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

import javax.servlet.http.HttpSession;
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

    @RequestMapping("admin/administrator/add")
    public String addAdministrator(Admin admin, HttpSession session){
        adminService.insert(admin,session);
        return "redirect:/admin/administrator";
    }

    @RequestMapping(value = "admin/administrator/delete")
    public String deleteCommentById(int id){
        adminService.deleteByAdmin_id(id);
        return "redirect:/admin/administrator";
    }

    @RequestMapping(value = "admin/administrator/update")
    public String updateCommentById(Admin admin, HttpSession session){
        adminService.updateByAdmin_id(admin,session);
        Admin modifyadmin = (Admin)session.getAttribute("isAdminLogin");
        if(admin.getAdmin_id().equals(modifyadmin.getAdmin_id()) ){
            return "redirect:/admin/adminInfo";
        }else{
            return "redirect:/admin/administrator";
        }
    }
}
