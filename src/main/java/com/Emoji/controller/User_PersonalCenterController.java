package com.Emoji.controller;

import com.Emoji.dao.CommentMapper;
import com.Emoji.entity.Comment;
import com.Emoji.entity.Upload;
import com.Emoji.entity.User;
import com.Emoji.service.CommentService;
import com.Emoji.service.UploadService;
import com.Emoji.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;

@Controller
public class User_PersonalCenterController {
    @Autowired
    UserService userService;
    @Autowired
    CommentService commentService;
    @Autowired
    UploadService uploadService;
    @RequestMapping("/personalCenter")
    public String PersonalCenter(HttpServletRequest request,Model model){
        HttpSession session =request.getSession();
        if (session.getAttribute("isLogin")!=null){ //验证是否已经登录
            if ((boolean)session.getAttribute("isLogin")==true){
                User result = userService.PersonalInformation((Integer) session.getAttribute("userid")) ;//根据用户id返回用户的信息
                result.setUserid((Integer) session.getAttribute("userid"));
                model.addAttribute("user",result);//把用户对象保存到model里传到前端界面
                return "personalCenter";
            }
        }
        return "login"; //没有登录，跳到登录界面

    }
    @RequestMapping("/mycontribute")
    public String mycontribute(HttpServletRequest request,Model model){
        HttpSession session =request.getSession();
        if (session.getAttribute("isLogin")!=null){
            if ((boolean)session.getAttribute("isLogin")==true){
                Integer userid = (Integer) session.getAttribute("userid");
                String username =(String)session.getAttribute("username");
                ArrayList<Upload> mycontributes = uploadService.selectMyContribute(userid,username);
                if (mycontributes.size()==0)
                    model.addAttribute("mycontributes",null);
                else
                    model.addAttribute("mycontributes",mycontributes);
            }
                return "mycontribute";
        }
        return "login";

    }
    @RequestMapping("/mycomment")
    public String mycomment(HttpServletRequest request,Model model){
        HttpSession session =request.getSession();
        if (session.getAttribute("isLogin")!=null){
            if ((boolean)session.getAttribute("isLogin")==true){
                String username =(String) session.getAttribute("username");
                ArrayList<Comment> comments = commentService.selectMyComment(username);
                if (comments.size()==0)
                    model.addAttribute("mycomments",null);
                else
                    model.addAttribute("mycomments",comments);
                return "mycomment";
            }
        }
        return "login";
    }
    @RequestMapping("/mycomment/delete")
    public  String deleteComment(Integer comment_id, HttpServletRequest request){
        HttpSession session =request.getSession();
        if (session.getAttribute("isLogin")!=null){
            if ((boolean)session.getAttribute("isLogin")==true){
                Comment comment = commentService.selectByPrimaryKey(comment_id);
                if (comment.getComment_username().equals((String) session.getAttribute("username"))){
                    //账户名验证
                    commentService.deleteByPrimaryKey(comment_id);
                }
            }
                return "redirect:/mycomment";
        }
        return "login";
    }
    @RequestMapping("/mydownload")
    public String download(HttpServletRequest request){
        HttpSession session =request.getSession();
        if (session.getAttribute("isLogin")!=null){
            if ((boolean)session.getAttribute("isLogin")==true)
                return "mydownload";
        }
        return "login";

    }
    @RequestMapping(value = "/changeInformation",method = RequestMethod.POST)
    public String change(@ModelAttribute User user, HttpServletRequest request){
        System.out.println("change: "+user);
        if (user.getSex().equals("null"))
            user.setSex(null);
        HttpSession session = request.getSession();
        if (session.getAttribute("isLogin")!=null){
            if ((boolean)session.getAttribute("isLogin")==true&&session.getAttribute("userid")!=null){
                user.setUserid((Integer) session.getAttribute("userid"));//得到用户的id
                userService.changeInformation(user);
                return "redirect:personalCenter";
            }

        }
        return "login";
    }

}
