package com.Emoji.service;

import com.Emoji.dao.CommentMapper;
import com.Emoji.entity.Comment;
import com.Emoji.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

@Service
public class CommentService {
    @Autowired
    CommentMapper commentMapper;

    public ArrayList<Comment> selectAll() {
        ArrayList<Comment> result;
        result = commentMapper.selectAll();
        return result;
    }

    public int deleteByPrimaryKey(Integer id){
        return commentMapper.deleteByPrimaryKey(id);
    }

    public ArrayList<Comment> selectByCondition(Comment params){
        return commentMapper.selectByCondition(params);
    }
}
