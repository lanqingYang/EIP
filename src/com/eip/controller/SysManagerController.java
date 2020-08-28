package com.eip.controller;

import com.eip.pojo.SystemUser;
import com.eip.service.SysManagerService;
import com.eip.service.SysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
public class SysManagerController {
    @Autowired
    private SysManagerService sysManagerService;

    @Autowired
    private SysUserService sysUserService;

    @RequestMapping(value="/ManagerLogin",method = RequestMethod.POST)
    @ResponseBody
    public String managerLogin(String name, String pwd){//前端input框中name属性中的
        // 名字必须与这个方法的参数名相同
        if(sysManagerService.checkManagerLogin (name, pwd)){

            return "success";
        } return "failure";
    }

    @RequestMapping(value="/ForbidUser/{id}",method = RequestMethod.GET)
    @ResponseBody
    public String forbidUser(@PathVariable("id") Integer id, HttpServletRequest request){
        SystemUser systemUser = sysUserService.getUserById (id);
        systemUser.setSUQualify (1);
        if(sysManagerService.forbiddenUser (systemUser) != 0){
            request.getSession ().setAttribute ("User",systemUser);
            return "success";
        } return "failure";
    }

    @RequestMapping(value="/ConfirmUserChar/{id}",method = RequestMethod.GET)
    @ResponseBody
    public String confirmUserChar(@PathVariable("id") Integer id, HttpServletRequest request){
        SystemUser systemUser = sysUserService.getUserById (id);
        systemUser.setSUVerify (1);
        if(sysManagerService.confirmUserChar (systemUser) != 0){
            request.getSession ().setAttribute ("User",systemUser);
            return "success";
        } return "failure";
    }
}
