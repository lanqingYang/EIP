package com.eip.service;

import com.eip.dao.SysUserMapper;
import com.eip.pojo.SystemUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SysUserService {

    @Autowired
    private SysUserMapper sysUserMapper;

    public boolean checkUserLoginByNameAndPwd(String name,String pwd){
        return sysUserMapper.selectUserByNameAndPwd (name,pwd) != null;
    }

    public Integer userRegister(SystemUser systemUser){
        return sysUserMapper.insertUserByObject (systemUser);
    }

    public SystemUser getUserByName(String name){
        List<SystemUser> systemUsers = sysUserMapper.selectUserByName (name);
        if(null!=systemUsers && systemUsers.size ()!=0){
            return systemUsers.get (0);
        }
        return null;
    }

    public SystemUser getUserById(Integer Id){
        return sysUserMapper.selectUserById (Id);
    }

    public Integer updateUserInfo(SystemUser systemUser){
        return sysUserMapper.updateUserByObject (systemUser);
    }

    public List<SystemUser> getAllUser(){
        return sysUserMapper.selectUsers ();
    }
}
