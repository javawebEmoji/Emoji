package com.Emoji.controller;

import com.Emoji.entity.Upload;
import com.Emoji.service.UploadService;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.Date;

@Controller
public class User_ContributeController {
    @Autowired
    UploadService uploadService;
    @RequestMapping("/contribute")
    public String test(){
        return "contribute";
    }
    @RequestMapping("/contribute/upload")
    @ResponseBody
    public JSONObject uploadWJ(HttpServletRequest request,
                               @RequestParam(value = "file", required = false) MultipartFile file,
                               @ModelAttribute Upload upload){
       JSONObject result = new JSONObject();
        try {
            if (file == null){
                System.out.println("后台空");
                result.put("success", 0);
                result.put("message", "文件为空");
                return result;
            }
        } catch ( Exception e){
            e.printStackTrace();
        }
        HttpSession session = request.getSession();
        String fileName = new Date().getTime()+upload.getFilename().substring(upload.getFilename().lastIndexOf('.'));//设置文件名
        String path = request.getSession().getServletContext().getRealPath("upload");
        upload.setUserid((Integer)session.getAttribute("userid"));
        upload.setUsername((String) session.getAttribute("username"));
        upload.setFilename(fileName);
        upload.setSavepath(path);
        upload.setUpload_time(new Date());
        System.out.println(upload);
        File targetFile = new File(path, fileName);
        if (!targetFile.exists()) {
            targetFile.mkdirs();
        }
        //保存
        try {
            file.transferTo(targetFile);
           int i= uploadService.insertSelective(upload);
           if (i==0) new Exception("插入数据库失败");
        } catch (Exception e) {
            e.printStackTrace();
            result.put("success", 0);
            result.put("message", "上传失败");
            return result;
        }
        result.put("success", 1);
        result.put("message", "上传成功");
        return result;
    }
}