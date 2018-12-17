package com.Emoji.controller;

import com.Emoji.entity.Comment;
import com.Emoji.entity.User;
import com.Emoji.service.CommentService;
import com.Emoji.service.UserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sun.xml.internal.ws.spi.db.DatabindingException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletInputStream;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
public class Admin_CommentController {
    @Autowired
    CommentService commentService;

    private ArrayList<Comment> comments = null;

    @RequestMapping("admin/comment")
    public String displayComments(@RequestParam(value="pn",defaultValue="1")Integer pn, Model model,String username, String content){
        //从第一条开始 每页查询五条数据
        PageHelper.startPage(pn, 5);
        System.out.println(username);
        model.addAttribute("username",username);
        model.addAttribute("content",content);
        if(comments == null){
            comments = commentService.selectAll();
            //将评论信息放入PageInfo对象里
            PageInfo page = new PageInfo(comments,5);
            model.addAttribute("pageInfo", page);

            model.addAttribute("comments",comments);
            comments = null;
            System.out.println("all");
        }else{
            PageInfo page = new PageInfo(comments,5);
            model.addAttribute("pageInfo", page);

            model.addAttribute("comments",comments);
            System.out.println("if");
        }
        return "admin/comment";
    }

    @RequestMapping(value = "admin/comment/delete")
    public String deleteCommentById(int id){

        commentService.deleteByPrimaryKey(id);
        return "redirect:/admin/comment";
    }

    @RequestMapping(value = "admin/comment/search")
    public String searchComments(@RequestParam(value="pn",defaultValue="1")Integer pn,String username, String content,Model model){
        PageHelper.startPage(pn, 5);
        System.out.println(username);
        System.out.println(content);
//        System.out.println(startTime);
//        System.out.println(endTime);
        Comment params = new Comment();
        params.setComment_username(username);
        params.setComment_content(content);
        comments = commentService.selectByCondition(params);
//        System.out.println(comments.toString());

        PageInfo page = new PageInfo(comments,5);
        model.addAttribute("pageInfo", page);

        model.addAttribute("comments",comments);

        model.addAttribute("username",username);
        model.addAttribute("content",content);
        return "redirect:/admin/comment";
    }
}
