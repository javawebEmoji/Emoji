package com.Emoji.service;

import com.Emoji.dao.CommentMapper;
import com.Emoji.dao.UserMapper;
import com.Emoji.entity.Comment;
import com.Emoji.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Service
public class CommentService {
    @Autowired
    CommentMapper commentMapper;
    @Autowired
    UserMapper userMapper;
    public ArrayList<Comment> selectAll() {
        ArrayList<Comment> result;
        result = commentMapper.selectAll();
        return result;
    }

    public int deleteByPrimaryKey(Integer id){
        return commentMapper.deleteByPrimaryKey(id);
    }

    public ArrayList<Comment> selectByCondition(Comment params){
        System.out.println(params.getComment_username()+" "+params.getComment_content());
        return commentMapper.selectByCondition(params);
    }

    public int addComment(Integer id, String content, Date time){
        String username = userMapper.selectByPrimaryKey(id).getUsername();
        System.out.print(username);
        Comment params = new Comment();
        params.setComment_username(username);
        params.setComment_content(content);
        params.setComment_time(time);
        return commentMapper.insert(params);
    }
}
