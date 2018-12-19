package com.Emoji.service;

import com.Emoji.dao.UploadMapper;
import com.Emoji.entity.Upload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}
