package com.Emoji.service;

import com.Emoji.dao.AdminMapper;
import com.Emoji.dao.UserMapper;
import com.Emoji.entity.Admin;
import com.Emoji.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;

@Service
public class AdminService {
    @Autowired
    AdminMapper adminMapper;

    public Map<String , Object> login(Map<String, Object> params) {
        Map<String, Object> result = new HashMap<>();
        try {
            /** 处理登录的业务逻辑   */
            /** 1.参数非空校验  */
            String admin_account = (String) params.get("admin_account");
            String admin_password = (String) params.get("admin_password");
            HttpSession session = (HttpSession) params.get("session");
            /** 根据登录的用户名去查询用户: 判断登录名是否存在  */
            Admin admin = adminMapper.getUserByAdmin_account(admin_account);
            if (admin != null) {
                /** 登录名存在  */
                /** 判断密码 */
                if (admin.getAdmin_password().equals(admin_password)) {
                    /** 判断用户是否已经被激活了 */
//                            if(user.getStatus() == 1){
                    /** 登录成功  */
                    /** 1.把登录成功的用户放入当前用户的session会话中  */
//                                session.setAttribute(OaContants.USER_SESSION, user);
                    System.out.println("设置用户 ---------------->：" + admin);
                    result.put("status", 1);
                    result.put("tip", "登录成功");
                    session.setAttribute("isAdminLogin",admin);
                } else {
                    /** 密码错误     */
                    result.put("status", 2);
                    result.put("tip", "密码错误了");
                }
            } else {
                /** 登录名不存在  */
                result.put("status", 3);
                result.put("tip", "没有该账户");
            }
            return result;
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }


    public ArrayList<Admin> selectAll() {
        ArrayList<Admin> result;
        result = adminMapper.selectAll();
        return result;
    }

    public int insert(Admin admin, HttpSession session) {
        //获取并设置修改人姓名
        Admin modifyadmin = (Admin)session.getAttribute("isAdminLogin");
//        System.out.println("adminservice:"+modifyadmin);
//        System.out.println("adminservice:"+modifyadmin.getAdmin_name());
        admin.setModifyadmin(modifyadmin.getAdmin_name());

        //获取并设置修改日期
        Date modifytime = new Date();
        System.out.println("adminservice:" + modifytime);
        admin.setModifytime(modifytime);
        return adminMapper.insert(admin);
    }

    public int deleteByAdmin_id(Integer id){
        return adminMapper.deleteByPrimaryKey(id);
    }
}
