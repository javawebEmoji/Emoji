package com.Emoji.entity;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Comment {
    private Integer comment_id;

    private String comment_username;

    private String comment_content;

    private Date comment_time;

    public Integer getComment_id() {
        return comment_id;
    }

    public void setComment_id(Integer comment_id) {
        this.comment_id = comment_id;
    }

    public String getComment_username() {
        return comment_username;
    }

    public void setComment_username(String comment_username) {
        this.comment_username = comment_username;
    }

    public String getComment_content() {
        return comment_content;
    }

    public void setComment_content(String comment_content) {
        this.comment_content = comment_content;
    }

    public Date getComment_time() {
        return comment_time;
    }

    public void setComment_time(Date comment_time) {
        this.comment_time = comment_time;
    }

    //转换日期格式，用于页面显示日期
    public String getComment_timeToString(){
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        return df.format(comment_time);
    }

    @Override
    public String toString() {
        return "Comment{" +
                "comment_id=" + comment_id +
                ", comment_username='" + comment_username + '\'' +
                ", comment_content='" + comment_content + '\'' +
                ", comment_time=" + comment_time +
                '}';
    }
}