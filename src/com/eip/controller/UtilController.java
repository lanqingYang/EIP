package com.eip.controller;

import com.eip.pojo.*;
import com.eip.service.OrganizationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class UtilController {
    @Autowired
    OrganizationService organizationService;

    @RequestMapping(value="/getCJSON", method= RequestMethod.GET)
    @ResponseBody
    public List<College> getCJSON(){
        return organizationService.searchAllCollege ();
    }

    @RequestMapping(value="/getHSJSON", method= RequestMethod.GET)
    @ResponseBody
    public List<Highschool> getHSJSON(){
        return organizationService.searchAllHighschool ();
    }

    @RequestMapping(value="/getMSJSON", method= RequestMethod.GET)
    @ResponseBody
    public List<MiddleSchool> getMSJSON(){
        return organizationService.searchAllMiddleSchool();
    }

    @RequestMapping(value="/getPSJSON", method= RequestMethod.GET)
    @ResponseBody
    public List<PrimarySchool> getPSJSON(){
        return organizationService.searchAllPrimarySchool ();
    }

    @RequestMapping(value="/getKJSON", method= RequestMethod.GET)
    @ResponseBody
    public List<Kindergarten> getKJSON(){
        return organizationService.searchAllKindergarten ();
    }




    @RequestMapping(value="/to/{page}", method= RequestMethod.GET)
    public String to(@PathVariable("page") String page,HttpServletRequest request){
        //System.out.println ("@RequestMapping(value=\"/to/{page}\", method= RequestMethod.GET)");

        switch (page.charAt (2)){
            case 'K':
                request.getSession ().setAttribute ("kInfo", organizationService.searchAllKindergarten ());
                break;
            case 'P':
                request.getSession ().setAttribute ("pInfo",organizationService.searchAllPrimarySchool ());
                break;
            case 'M': request.getSession ().setAttribute ("mInfo",organizationService.searchAllMiddleSchool ());
                break;
            case 'H':
                request.getSession ().setAttribute ("hInfo",organizationService.searchAllHighschool ());
                break;
            case 'C':
                request.getSession ().setAttribute ("cInfo",organizationService.searchAllCollege ());
                break;
            default:
                break;
        }

        switch (page.charAt (0)){
            case 'k':
                request.getSession ().setAttribute ("kInfo", organizationService.searchAllKindergarten ());
                break;
            case 'p':
                request.getSession ().setAttribute ("pInfo",organizationService.searchAllPrimarySchool ());
                break;
            case 'm': request.getSession ().setAttribute ("mInfo",organizationService.searchAllMiddleSchool ());
                break;
            case 'h':
                request.getSession ().setAttribute ("hInfo",organizationService.searchAllHighschool ());
                break;
            case 'c':
                request.getSession ().setAttribute ("cInfo",organizationService.searchAllCollege ());
                break;
            default:
                break;
        }

        return page;
    }

    @RequestMapping(value="/to/{page}/{id}", method= RequestMethod.GET)
    public String toWithId(@PathVariable("page") String page, @PathVariable("id") Integer id, HttpServletRequest request){
        //System.out.println ("    @RequestMapping(value=\"/to/{page}/{id}\", method= RequestMethod.GET)\n");
        if(page.charAt (0) == 'a'){
            switch (page.charAt (2)){
                case 'K':
                    request.setAttribute ("kindergarten",organizationService.searchKindergartenById (id));
                    request.getSession ().setAttribute ("kInfo", organizationService.searchAllKindergarten ());
                    break;
                case 'P':
                    request.setAttribute ("primarySchool",organizationService.searchPrimarySchoolById (id));
                    request.getSession ().setAttribute ("pInfo",organizationService.searchAllPrimarySchool ());
                    break;
                case 'M':
                    request.setAttribute ("middleSchool",organizationService.searchMiddleSchoolById (id));
                    request.getSession ().setAttribute ("mInfo",organizationService.searchAllMiddleSchool ());
                    break;
                case 'H':
                    request.setAttribute ("highschool",organizationService.searchHighschoolById (id));
                    request.getSession ().setAttribute ("hInfo",organizationService.searchAllHighschool ());
                    break;
                case 'C':
                    request.setAttribute ("college",organizationService.searchCollegeById (id));
                    request.getSession ().setAttribute ("cInfo",organizationService.searchAllCollege ());
                    break;
                default:
                    break;
            }
        }else{
            switch (page.charAt (0)){
                case 'k':
                    request.setAttribute ("kindergarten",organizationService.searchKindergartenById (id));
                    request.getSession ().setAttribute ("kInfo", organizationService.searchAllKindergarten ());
                    break;
                case 'p':
                    request.setAttribute ("primarySchool",organizationService.searchPrimarySchoolById (id));
                    request.getSession ().setAttribute ("pInfo",organizationService.searchAllPrimarySchool ());
                    break;
                case 'm':
                    request.setAttribute ("middleSchool",organizationService.searchMiddleSchoolById (id));
                    request.getSession ().setAttribute ("mInfo",organizationService.searchAllMiddleSchool ());
                    break;
                case 'h':
                    request.setAttribute ("highschool",organizationService.searchHighschoolById (id));
                    request.getSession ().setAttribute ("hInfo",organizationService.searchAllHighschool ());
                    break;
                case 'c':
                    request.setAttribute ("college",organizationService.searchCollegeById (id));
                    request.getSession ().setAttribute ("cInfo",organizationService.searchAllCollege ());
                    break;
                default:
                    break;
            }
        }
        request.setAttribute ("organizationId",id);
        return page;
    }

    @RequestMapping(value="/goto/{page}", method= RequestMethod.GET)
    public String gotoPage(@PathVariable("page") String page){
        return page;
    }

}
