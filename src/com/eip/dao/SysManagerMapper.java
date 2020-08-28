package com.eip.dao;

import com.eip.pojo.SystemManager;
import org.apache.ibatis.annotations.Param;

public interface SysManagerMapper {
    SystemManager selectSysManagerByNameAndPwd(@Param("SMName") String name, @Param ("SMPwd") String Pwd);
}
