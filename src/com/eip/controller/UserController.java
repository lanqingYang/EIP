package com.eip.controller;

import com.eip.pojo.Kindergarten;
import com.eip.pojo.SystemUser;
import com.eip.service.OrganizationService;
import com.eip.service.SysManagerService;
import com.eip.service.SysUserService;
import com.eip.vo.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.UUID;


@Controller
public class UserController {
    @Autowired
    private SysManagerService sysManagerService;

    @Autowired
    private SysUserService sysUserService;

    @Autowired
    private OrganizationService organizationService;

    @RequestMapping(value="/UserLogin",method = RequestMethod.POST)
    @ResponseBody
    public String userLogin(String character, String name,
                            String pwd, Map<String,Object> map, HttpServletRequest request){//前端input框中name属性中的
        // 名字必须与这个方法的参数名相同
        if(character.equals ("user")){
            if(sysUserService.checkUserLoginByNameAndPwd (name,pwd)){
                if(sysUserService.getUserByName (name).getSUQualify () == 1){
                    return "forbidden";
                }

                request.getSession ().setAttribute ("User",sysUserService.getUserByName (name));
/*
                request.getSession ().setAttribute ("kInfo", organizationService.searchAllKindergarten ());
                request.getSession ().setAttribute ("pInfo",organizationService.searchAllPrimarySchool ());
                request.getSession ().setAttribute ("mInfo",organizationService.searchAllMiddleSchool ());
                request.getSession ().setAttribute ("hInfo",organizationService.searchAllHighschool ());
                request.getSession ().setAttribute ("cInfo",organizationService.searchAllCollege ());*/

                //System.out.println ("return \"userSuccess\";");
                return "userSuccess";
            }
        }else if(character.equals ("manager")){
            if(sysManagerService.checkManagerLogin (name,pwd)){
                request.getSession ().setAttribute ("SMName",name);
//
//                request.getSession ().setAttribute ("kInfo", organizationService.searchAllKindergarten ());
//                request.getSession ().setAttribute ("pInfo",organizationService.searchAllPrimarySchool ());
//                request.getSession ().setAttribute ("mInfo",organizationService.searchAllMiddleSchool ());
//                request.getSession ().setAttribute ("hInfo",organizationService.searchAllHighschool ());
//                request.getSession ().setAttribute ("cInfo",organizationService.searchAllCollege ());

                return "managerSuccess";
            }
        }
        return "failure";
    }

    @RequestMapping(value="/UserRegister",method=RequestMethod.POST)
    @ResponseBody
    public String register(SystemUser systemUser,
                      @RequestParam("imageFile") MultipartFile file,
                      HttpServletRequest request) throws IOException {
        String name1 = systemUser.getSUName ();
        SystemUser userByName = sysUserService.getUserByName (name1);
        Integer result = 0;
        if(userByName == null){
        /*创建保存图片的文件夹*/
            String uploadPath = request.getServletContext().getRealPath("/upload");
            File dir = new File(uploadPath);
            if (!dir.exists()) {
                dir.mkdirs();
            }
            if (!file.isEmpty()) {
                /*获取上传图片的原始文件名，例如 XXX.jpg */
                String originalFilename = file.getOriginalFilename();
                /*获取图片的后缀名，例如jpg*/
                String suffix = originalFilename.split("\\.")[1];
                /*获取一个uuid*/
                String uuid = UUID.randomUUID().toString();
                /*拼装保存图片的名字*/
                String imageName = uuid.replace("-", "") + "." + suffix;
                /*保存图片*/
                file.transferTo(new File(uploadPath + File.separator + imageName));
                /*设置保存学生对象中image属性的值，这里保存的是图片名字*/
                systemUser.setSUImage (imageName);
            }
            result = sysUserService.userRegister (systemUser);
        }
        if (result == 1) {
            return "success";
        } else {
            return "failure";
        }
    }

    @RequestMapping(value="/checkUserByName/{name}",method=RequestMethod.POST)
    @ResponseBody
    public String checkUserByName(@PathVariable("name") String name){
        SystemUser userByName = sysUserService.getUserByName (name);
        if(userByName != null){
            return "success";
        }else return "failure";
    }
    @RequestMapping(value="/getUserByName",method=RequestMethod.GET)
    public String getUserByName(String name, Map<String,Object> map,HttpServletRequest request){//前端input框中name属性中的
        // 名字必须与这个方法的参数名相同
        SystemUser userByName = sysUserService.getUserByName (name);
        if(userByName != null){
            request.getSession ().setAttribute ("userSelectByName",userByName);
            return "forward:/answerQ.jsp";
        }else{
            request.setAttribute ("msg","该用户不存在！");
        } return "forward:/findPwd.jsp";
    }

    @RequestMapping(value="/updateUserPwd/{id}",method=RequestMethod.POST)
    public String updateUserPwdById(@PathVariable("id") Integer id,
                                 String SUPwd,String newPwd,
                                 HttpServletRequest request) throws IOException{
        Integer result = 0;
        SystemUser systemUser = sysUserService.getUserById (id);
        if(SUPwd.equals (newPwd)){
            systemUser.setSUPwd (SUPwd);
            result = sysUserService.updateUserInfo (systemUser);
            if (result == 1) {
                request.setAttribute ("msg","修改成功！");
                if(request.getSession ().getAttribute ("User")!=null){
                    return "userPwdChange";
                }
                return "forward:/login.jsp";
            } else {
                request.setAttribute ("msg","修改失败！");
            }
        }else
            request.setAttribute ("msg","两次输入的密码不同！");

        if(request.getSession ().getAttribute ("User")!=null){
            return "userPwdChange";
        }
        return "forward:/resetPwd.jsp";
    }

    @RequestMapping(value="/updateUser/{id}",method=RequestMethod.POST)
    @ResponseBody
    public String updateUserById(SystemUser systemUser,@PathVariable("id") Integer id,
                                 @RequestParam("imageFile") MultipartFile file,
                                 HttpServletRequest request,String image1) throws IOException{
        /*创建保存图片的文件夹*/
        String uploadPath = request.getServletContext().getRealPath("/upload");
        File dir = new File(uploadPath);
        if (!dir.exists()) {
            dir.mkdirs();
        }
        if (!file.isEmpty()) {
            /*获取上传图片的原始文件名，例如 XXX.jpg */
            String originalFilename = file.getOriginalFilename();
            /*获取图片的后缀名，例如jpg*/
            String suffix = originalFilename.split("\\.")[1];
            /*获取一个uuid*/
            String uuid = UUID.randomUUID().toString();
            /*拼装保存图片的名字*/
            String imageName = uuid.replace("-", "") + "." + suffix;
            /*保存图片*/
            file.transferTo(new File(uploadPath + File.separator + imageName));
            /*设置保存学生对象中image属性的值，这里保存的是图片名字*/
            systemUser.setSUImage (imageName);
        }else {
            systemUser.setSUImage(image1);
        }
        systemUser.setSUId (id);
        Integer result = sysUserService.updateUserInfo (systemUser);
        if (result == 1) {
            request.getSession ().setAttribute ("User",systemUser);
            return "success";
        } else {
            return "failure";
        }
    }

    @RequestMapping(value="/displaySysUsers",method = RequestMethod.GET)
    @ResponseBody
    public PageInfo displaySysUsers(){
        List<SystemUser> systemUsers = sysUserService.getAllUser ();
        PageInfo<SystemUser> pageInfo = new PageInfo<> ();
        pageInfo.setRecordsTotal(systemUsers.size());
        pageInfo.setRecordsFiltered(systemUsers.size());
        pageInfo.setData(systemUsers);
        pageInfo.setDraw(1);
        return pageInfo;
    }

    @RequestMapping(value="/logout",method=RequestMethod.GET)
    public String logout(HttpServletRequest request){//前端input框中name属性中的
        // 名字必须与这个方法的参数名相同
        request.getSession().removeAttribute("User");
         return "redirect:/login.jsp";
    }


}
