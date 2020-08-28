package com.eip.service;

import com.eip.dao.SysManagerMapper;
import com.eip.dao.SysUserMapper;
import com.eip.pojo.SystemManager;
import com.eip.pojo.SystemUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SysManagerService {

    @Autowired
    private SysManagerMapper sysManagerMapper;

    @Autowired
    private SysUserMapper sysUserMapper;

    public boolean checkManagerLogin(String name,String pwd){
        SystemManager systemManager = sysManagerMapper.selectSysManagerByNameAndPwd (name,pwd);
        return (systemManager != null);
    }

    public Integer forbiddenUser(SystemUser systemUser){
        return sysUserMapper.updateUserByObject (systemUser);
    }

    public Integer confirmUserChar(SystemUser systemUser){
        return sysUserMapper.updateUserByObject (systemUser);
    }
}
