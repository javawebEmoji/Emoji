package com.Emoji.service;

import com.Emoji.dao.UploadMapper;
import com.Emoji.entity.Upload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

/**
 * Created by IntelliJ IDEA
 *
 * @author manzuo
 * @date 2018/12/19 0:02
 */
@Service
public class UploadService {
    @Autowired
    UploadMapper uploadMapper;

    public int insertSelective(Upload upload){
      return uploadMapper.insertSelective(upload);
    }
    public ArrayList<Upload> selectAll(){
        return uploadMapper.selectAll();
    }
    public int updateByPrimaryKeySelective(Upload upload){
       return uploadMapper.updateByPrimaryKeySelective(upload);
    }
    public int deleteByPrimaryKey(Integer id){
        return  uploadMapper.deleteByPrimaryKey(id);
    }
    public ArrayList<Upload> selectMyContribute(Integer userid,String username){
        Upload record = new Upload();
        record.setUserid(userid);
        record.setUsername(username);
        return uploadMapper.selectMyContribute(record);
    }
}
