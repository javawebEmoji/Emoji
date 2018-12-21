package com.Emoji.controller;

import com.Emoji.entity.Upload;
import com.Emoji.service.UploadService;
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
import java.io.File;
import java.util.ArrayList;

/**
 * Created by IntelliJ IDEA
 *
 * @author manzuo
 * @date 2018/12/20 9:01
 */
@Controller
public class Admin_EmojiController {
    @Autowired
    UploadService uploadService;
    @RequestMapping("/admin/emoji")
    public String emoji(@RequestParam(value="pn",defaultValue="1")Integer pn, Model model){
        PageHelper.startPage(pn,5);
        ArrayList<Upload> emojies = uploadService.selectAll();
        PageInfo emojiPage = new PageInfo(emojies,5);
        model.addAttribute("emojiPage",emojiPage);
        model.addAttribute("emojies",emojies);
        return "admin/emoji";
    }
    @RequestMapping(value = "/admin/ImgInformation",method = RequestMethod.POST)
    public String change(@ModelAttribute Upload upload, HttpServletRequest request){
        uploadService.updateByPrimaryKeySelective(upload);
        return "redirect:emoji";
    }
    @RequestMapping(value = "admin/emoji/delete",method =RequestMethod.GET )
    public String deleteImgById(int id,String filename,HttpServletRequest request){
        System.out.println(id+" "+filename);
        uploadService.deleteByPrimaryKey(id);//从数据库中删除记录
        File file = new File(request.getSession().getServletContext().getRealPath("upload"+"/"+filename));
        file.delete();//从磁盘中删除对应文件
        return "redirect:/admin/emoji";
    }

}
