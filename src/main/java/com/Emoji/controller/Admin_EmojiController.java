package com.Emoji.controller;

import com.Emoji.entity.Upload;
import com.Emoji.service.UploadService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
        System.out.println("emojiTest");
        PageHelper.startPage(pn,5);
        ArrayList<Upload> emojies = uploadService.selectAll();
        PageInfo emojiPage = new PageInfo(emojies,5);
        model.addAttribute("emojiPage",emojiPage);
        model.addAttribute("emojies",emojies);
        return "admin/emoji";

    }
}
