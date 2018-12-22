package com.Emoji.entity;

import java.util.Date;

public class Upload {
    private Integer upload_id;

    private Integer userid;

    private String username;

    private String filename;

    private String emoji_title;

    private String emoji_description;

    private String emoji_label;

    private String savepath;

    private Date upload_time;

    public Integer getUpload_id() {
        return upload_id;
    }

    public void setUpload_id(Integer upload_id) {
        this.upload_id = upload_id;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public String getEmoji_title() {
        return emoji_title;
    }

    public void setEmoji_title(String emoji_title) {
        this.emoji_title = emoji_title;
    }

    public String getEmoji_description() {
        return emoji_description;
    }

    public void setEmoji_description(String emoji_description) {
        this.emoji_description = emoji_description;
    }

    public String getEmoji_label() {
        return emoji_label;
    }

    public void setEmoji_label(String emoji_label) {
        this.emoji_label = emoji_label;
    }

    public String getSavepath() {
        return savepath;
    }

    public void setSavepath(String savepath) {
        this.savepath = savepath;
    }

    public Date getUpload_time() {
        return upload_time;
    }

    public void setUpload_time(Date upload_time) {
        this.upload_time = upload_time;
    }

    @Override
    public String toString() {
        return "Upload{" +
                "upload_id=" + upload_id +
                ", userid=" + userid +
                ", username='" + username + '\'' +
                ", filename='" + filename + '\'' +
                ", emoji_title='" + emoji_title + '\'' +
                ", emoji_description='" + emoji_description + '\'' +
                ", emoji_label='" + emoji_label + '\'' +
                ", savepath='" + savepath + '\'' +
                ", upload_time=" + upload_time +
                '}';
    }
}