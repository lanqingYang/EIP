package com.eip.dao;

import com.eip.pojo.SystemUser;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SysUserMapper {
    SystemUser selectUserByNameAndPwd(@Param ("SUName") String SUName,@Param ("SUPwd") String SUPwd);

    Integer insertUserByObject(SystemUser systemUser);

    Integer updateUserByObject(SystemUser systemUser);

    List<SystemUser> selectUsers();

    List<SystemUser> selectUserByName(@Param ("SUName") String SUName);

    SystemUser selectUserById(@Param ("SUId") Integer SUId);
}
