package com.Emoji.dao;

import com.Emoji.entity.Upload;

public interface UploadMapper {
    int deleteByPrimaryKey(Integer upload_id);

    int insert(Upload record);

    int insertSelective(Upload record);

    Upload selectByPrimaryKey(Integer upload_id);

    int updateByPrimaryKeySelective(Upload record);

    int updateByPrimaryKey(Upload record);
}