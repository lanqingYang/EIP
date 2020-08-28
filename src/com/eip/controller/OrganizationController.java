package com.eip.controller;

import com.eip.pojo.*;
import com.eip.service.OrganizationService;
import com.eip.vo.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;


@Controller
public class OrganizationController {
    @Autowired
    private OrganizationService organizationService;

    //searchAllOrganizationByName
    @RequestMapping(value="/searchAllKindergartenByName",method = RequestMethod.GET)
    //@ResponseBody
    public String searchAllKindergartenByName(String name, HttpServletRequest request){
        List<Kindergarten> kindergartens = organizationService.searchAllKindergartenByName (name);
        if(kindergartens!=null){
            request.getSession ().setAttribute ("kInfo",kindergartens);
            //return "success";
        }
        //return "failure";
        return "forward:/WEB-INF/pages/kInfo.jsp";
    }

    @RequestMapping(value="/searchAllPrimarySchoolByName",method = RequestMethod.GET)
    //@ResponseBody
    public String searchAllPrimarySchoolByName(String name, HttpServletRequest request){
        List<PrimarySchool> primarySchools = organizationService.searchAllPrimarySchoolByName (name);
        if(primarySchools!=null){
            request.getSession ().setAttribute ("pInfo",primarySchools);
            //return "success";
        }
        //return "failure";
        return "forward:/WEB-INF/pages/pInfo.jsp";
    }

    @RequestMapping(value="/searchAllMiddleSchoolByName",method = RequestMethod.GET)
    //@ResponseBody
    public String searchAllMiddleSchoolByName(String name, HttpServletRequest request){
        List<MiddleSchool> middleSchools = organizationService.searchAllMiddleSchoolByName (name);
        if(middleSchools!=null){
            request.getSession ().setAttribute ("mInfo",middleSchools);
            //return "success";
        }
        //return "failure";
        return "forward:/WEB-INF/pages/mInfo.jsp";
    }

    @RequestMapping(value="/searchAllHighschoolByName",method = RequestMethod.GET)
    //@ResponseBody
    public String searchAllHighschoolByName(String name, HttpServletRequest request){
        List<Highschool> highschools = organizationService.searchAllHighschoolByName (name);
        if(highschools!=null){
            request.getSession ().setAttribute ("hInfo",highschools);
            //return "success";
        }
        //return "failure";
        return "forward:/WEB-INF/pages/hInfo.jsp";
    }

    @RequestMapping(value="/searchAllCollegeByName",method = RequestMethod.GET)
    //@ResponseBody
    public String searchAllCollegeByName(String name, HttpServletRequest request){
        List<College> colleges = organizationService.searchAllCollegeByName (name);
        if(colleges!=null){
            request.getSession ().setAttribute ("cInfo",colleges);
            //return "success";
        }
        //return "failure";
        return "forward:/WEB-INF/pages/cInfo.jsp";
    }

    //searchAllOrganization
    @RequestMapping(value="/searchAllKindergartens",method = RequestMethod.GET)
    @ResponseBody
    public List<Kindergarten> searchAllKindergartens(){
        return organizationService.searchAllKindergarten ();
    }

    @RequestMapping(value="/searchAllPrimarySchools",method = RequestMethod.GET)
    @ResponseBody
    public List<PrimarySchool> searchAllPrimarySchools(){
        return organizationService.searchAllPrimarySchool ();
    }

    @RequestMapping(value="/searchAllMiddleSchools",method = RequestMethod.GET)
    @ResponseBody
    public List<MiddleSchool> searchAllMiddleSchools(){
        return organizationService.searchAllMiddleSchool ();
    }

    @RequestMapping(value="/searchAllHighschools",method = RequestMethod.GET)
    @ResponseBody
    public List<Highschool> searchAllHighschools(Map<String,Object> map){
        return organizationService.searchAllHighschool ();
    }

    @RequestMapping(value="/searchAllColleges",method = RequestMethod.GET)
    @ResponseBody
    public List<College> searchAllColleges(Map<String,Object> map){
        return organizationService.searchAllCollege ();
    }
    //displayAllOrganization

    /*PageInfo<Employee> pageInfo = new PageInfo<>();
        pageInfo.setRecordsTotal(employees.size());
        pageInfo.setRecordsFiltered(employees.size());
        pageInfo.setData(employees);
        pageInfo.setDraw(1);
        return pageInfo;*/
    @RequestMapping(value="/displayKindergartens",method = RequestMethod.GET)
    @ResponseBody
    public PageInfo displayKindergartens(){
        List<Kindergarten> kindergartens = organizationService.searchAllKindergarten ();
        PageInfo<Kindergarten> pageInfo = new PageInfo<> ();
        pageInfo.setRecordsTotal(kindergartens.size());
        pageInfo.setRecordsFiltered(kindergartens.size());
        pageInfo.setData(kindergartens);
        pageInfo.setDraw(1);
        return pageInfo;
    }

    @RequestMapping(value="/displayPrimarySchools",method = RequestMethod.GET)
    @ResponseBody
    public PageInfo displayPrimarySchools(){
        List<PrimarySchool> primarySchools = organizationService.searchAllPrimarySchool ();
        PageInfo<PrimarySchool> pageInfo = new PageInfo<> ();
        pageInfo.setRecordsTotal(primarySchools.size());
        pageInfo.setRecordsFiltered(primarySchools.size());
        pageInfo.setData(primarySchools);
        pageInfo.setDraw(1);
        return pageInfo;
    }

    @RequestMapping(value="/displayMiddleSchools",method = RequestMethod.GET)
    @ResponseBody
    public PageInfo displayMiddleSchools(){
        List<MiddleSchool> middleSchools = organizationService.searchAllMiddleSchool ();
        PageInfo<MiddleSchool> pageInfo = new PageInfo<> ();
        pageInfo.setRecordsTotal(middleSchools.size());
        pageInfo.setRecordsFiltered(middleSchools.size());
        pageInfo.setData(middleSchools);
        pageInfo.setDraw(1);
        return pageInfo;
    }

    @RequestMapping(value="/displayHighschools",method = RequestMethod.GET)
    @ResponseBody
    public PageInfo displayHighschools(Map<String,Object> map){
        List<Highschool> highschools = organizationService.searchAllHighschool ();
        PageInfo<Highschool> pageInfo = new PageInfo<> ();
        pageInfo.setRecordsTotal(highschools.size());
        pageInfo.setRecordsFiltered(highschools.size());
        pageInfo.setData(highschools);
        pageInfo.setDraw(1);
        return pageInfo;
    }

    @RequestMapping(value="/displayColleges",method = RequestMethod.GET)
    @ResponseBody
    public PageInfo displayColleges(Map<String,Object> map){
        List<College> colleges = organizationService.searchAllCollege ();
        PageInfo<College> pageInfo = new PageInfo<> ();
        pageInfo.setRecordsTotal(colleges.size());
        pageInfo.setRecordsFiltered(colleges.size());
        pageInfo.setData(colleges);
        pageInfo.setDraw(1);
        return pageInfo;
    }

    //addOrganization
    @RequestMapping(value="/addKindergarten",method = RequestMethod.POST)
    @ResponseBody
    public String addKindergarten(Kindergarten kindergarten){
        if(organizationService.addKindergartenByObj (kindergarten) == 1){
            return "success";
        }
        return "failure";
    }

    @RequestMapping(value="/addPrimarySchool",method = RequestMethod.POST)
    @ResponseBody
    public String addPrimarySchool(PrimarySchool primarySchool){
        if(organizationService.addPrimarySchoolByObj (primarySchool) == 1){
            return "success";
        }
        return "failure";
    }

    @RequestMapping(value="/addMiddleSchool",method = RequestMethod.POST)
    @ResponseBody
    public String addMiddleSchool(MiddleSchool middleSchool){
        if(organizationService.addMiddleSchoolByObj (middleSchool) == 1){
            return "success";
        }
        return "failure";
    }

    @RequestMapping(value="/addHighschool",method = RequestMethod.POST)
    @ResponseBody
    public String addHighschool(Highschool highschool){
        if(organizationService.addHighschoolByObj (highschool) == 1){
            return "success";
        }
        return "failure";
    }

    @RequestMapping(value="/addCollege",method = RequestMethod.POST)
    @ResponseBody
    public String addCollege(College college){
        if(organizationService.addCollegeByObj (college) == 1){
            return "success";
        }
        return "failure";
    }

    //deleteOrganization
    @RequestMapping(value="/deleteKindergarten/{id}",method = RequestMethod.GET)
    @ResponseBody
    public String deleteKindergarten(@PathVariable("id") Integer id){
        if(organizationService.deleteKindergartenById (id)){
            return "success";
        }
        return "failure";
    }

    @RequestMapping(value="/deletePrimarySchool/{id}",method = RequestMethod.GET)
    @ResponseBody
    public String deletePrimarySchool(@PathVariable("id") Integer id){
        if(organizationService.deletePrimarySchoolById (id)){
            return "success";
        }
        return "failure";
    }

    @RequestMapping(value="/deleteMiddleSchool/{id}",method = RequestMethod.GET)
    @ResponseBody
    public String deleteMiddleSchool(@PathVariable("id") Integer id){
        if(organizationService.deleteMiddleSchoolById (id)){
            return "success";
        }
        return "failure";
    }

    @RequestMapping(value="/deleteHighschool/{id}",method = RequestMethod.GET)
    @ResponseBody
    public String deleteHighschool(@PathVariable("id") Integer id){
        if(organizationService.deleteHighschoolById (id)){
            return "success";
        }
        return "failure";
    }

    @RequestMapping(value="/deleteCollege/{id}",method = RequestMethod.GET)
    @ResponseBody
    public String deleteCollege(@PathVariable("id") Integer id){
        if(organizationService.deleteCollegeById (id)){
            return "success";
        }
        return "failure";
    }

    //updateOrganization
    @RequestMapping(value="/updateKindergarten/{id}",method = RequestMethod.POST)
    @ResponseBody
    public String updateKindergarten(Kindergarten kindergarten,@PathVariable("id") Integer id){
        kindergarten.setKId (id);
        if(organizationService.updateKindergartenByObj (kindergarten) == 1){
            return "success";
        }
        return "failure";
    }

    @RequestMapping(value="/updatePrimarySchool/{id}",method = RequestMethod.POST)
    @ResponseBody
    public String updatePrimarySchool(PrimarySchool primarySchool,@PathVariable("id") Integer id){
        primarySchool.setPSId (id);
        if(organizationService.updatePrimarySchoolByObj (primarySchool) == 1){
            return "success";
        }
        return "failure";
    }

    @RequestMapping(value="/updateMiddleSchool/{id}",method = RequestMethod.POST)
    @ResponseBody
    public String updateMiddleSchool(MiddleSchool middleSchool,@PathVariable("id") Integer id){
        middleSchool.setMSId (id);
        if(organizationService.updateMiddleSchoolByObj (middleSchool) == 1){
            return "success";
        }
        return "failure";
    }

    @RequestMapping(value="/updateHighschool/{id}",method = RequestMethod.POST)
    @ResponseBody
    public String updateHighschool(Highschool highschool,@PathVariable("id") Integer id){
        highschool.setHSId (id);
        if(organizationService.updateHighschoolByObj (highschool) == 1){
            return "success";
        }
        return "failure";
    }

    @RequestMapping(value="/updateCollege/{id}",method = RequestMethod.POST)
    @ResponseBody
    public String updateCollege(College college,@PathVariable("id") Integer id){
        college.setCId (id);
        if(organizationService.updateCollegeByObj (college) == 1){
            return "success";
        }
        return "failure";
    }

    //searchOrganizationById
    @RequestMapping(value="/searchKindergartenById/{id}",method = RequestMethod.GET)
    @ResponseBody
    public String searchKindergartenById(@PathVariable("id") Integer id,Map<String,Object> map){
        Kindergarten kindergarten = organizationService.searchKindergartenById (id);
        if(kindergarten != null){
            map.put ("kindergarten",kindergarten);
            return "success";
        }
        return "failure";
    }

    @RequestMapping(value="/searchPrimarySchoolById/{id}",method = RequestMethod.GET)
    @ResponseBody
    public String searchPrimarySchoolById(@PathVariable("id") Integer id,Map<String,Object> map){
        PrimarySchool primarySchool = organizationService.searchPrimarySchoolById (id);
        if(primarySchool != null){
            map.put ("primarySchool",primarySchool);
            return "success";
        }
        return "failure";
    }

    @RequestMapping(value="/searchMiddleSchoolById/{id}",method = RequestMethod.GET)
    @ResponseBody
    public String searchMiddleSchoolById(@PathVariable("id") Integer id,Map<String,Object> map){
        MiddleSchool middleSchool = organizationService.searchMiddleSchoolById (id);
        if(middleSchool != null){
            map.put ("middleSchool",middleSchool);
            return "success";
        }
        return "failure";
    }

    @RequestMapping(value="/searchHighschoolById/{id}",method = RequestMethod.GET)
    @ResponseBody
    public String searchHighschoolById(@PathVariable("id") Integer id,Map<String,Object> map){
        Highschool highschool = organizationService.searchHighschoolById (id);
        if(highschool != null){
            map.put ("highschool",highschool);
            return "success";
        }
        return "failure";
    }

    @RequestMapping(value="/searchCollegeById/{id}",method = RequestMethod.GET)
    @ResponseBody
    public String searchCollegeById(@PathVariable("id") Integer id,Map<String,Object> map){
        College college = organizationService.searchCollegeById (id);
        if(college != null){
            map.put ("college",college);
            return "success";
        }
        return "failure";
    }
}
