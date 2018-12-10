package com.Emoji.dao;

import com.Emoji.entity.Comment;

public interface CommentMapper {
    int deleteByPrimaryKey(Integer comment_id);

    int insert(Comment record);

    int insertSelective(Comment record);

    Comment selectByPrimaryKey(Integer comment_id);

    int updateByPrimaryKeySelective(Comment record);

    int updateByPrimaryKey(Comment record);
}