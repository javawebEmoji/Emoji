package com.Emoji.entity;

import java.util.Date;

public class Admin {
    private String admin_name;

    private String admin_password;

    private String admin_account;

    private String admin_phone;

    private String modifyadmin;

    private Date modifytime;

    public String getAdmin_name() {
        return admin_name;
    }

    public void setAdmin_name(String admin_name) {
        this.admin_name = admin_name;
    }

    public String getAdmin_password() {
        return admin_password;
    }

    public void setAdmin_password(String admin_password) {
        this.admin_password = admin_password;
    }

    public String getAdmin_account() {
        return admin_account;
    }

    public void setAdmin_account(String admin_account) {
        this.admin_account = admin_account;
    }

    public String getAdmin_phone() {
        return admin_phone;
    }

    public void setAdmin_phone(String admin_phone) {
        this.admin_phone = admin_phone;
    }

    public String getModifyadmin() {
        return modifyadmin;
    }

    public void setModifyadmin(String modifyadmin) {
        this.modifyadmin = modifyadmin;
    }

    public Date getModifytime() {
        return modifytime;
    }

    public void setModifytime(Date modifytime) {
        this.modifytime = modifytime;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "admin_name='" + admin_name + '\'' +
                ", admin_password='" + admin_password + '\'' +
                ", admin_account='" + admin_account + '\'' +
                ", admin_phone='" + admin_phone + '\'' +
                ", modifyadmin='" + modifyadmin + '\'' +
                ", modifytime=" + modifytime +
                '}';
    }
}