package com.Emoji.service;

import com.Emoji.dao.CommentMapper;
import com.Emoji.entity.Comment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Service
public class CommentService {
    @Autowired
    CommentMapper commentMapper;

    public Comment select(Comment comment) {

    }
}
