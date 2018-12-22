package com.Emoji.dao;

import com.Emoji.entity.Upload;

import java.util.ArrayList;

public interface UploadMapper {
    int deleteByPrimaryKey(Integer upload_id);

    int insert(Upload record);

    int insertSelective(Upload record);

    Upload selectByPrimaryKey(Integer upload_id);

    int updateByPrimaryKeySelective(Upload record);

    int updateByPrimaryKey(Upload record);
    ArrayList<Upload> selectAll();
    ArrayList<Upload> selectMyContribute(Upload record);
}