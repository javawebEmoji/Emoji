package com.Emoji.dao;

import com.Emoji.entity.Comment;

import java.util.ArrayList;
import java.util.HashMap;

public interface CommentMapper {



    int insertSelective(Comment record);

    Comment selectByPrimaryKey(Integer comment_id);

    int updateByPrimaryKeySelective(Comment record);

    int updateByPrimaryKey(Comment record);


    ArrayList<Comment> selectAll();
    int deleteByPrimaryKey(Integer comment_id);
    ArrayList<Comment> selectByCondition(Comment params);
    int insert(Comment record);

}