package com.eip.controller;

import com.eip.pojo.TipOff;
import com.eip.service.TipOffService;
import com.eip.vo.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Iterator;
import java.util.List;

@Controller
public class TipOffController {
    @Autowired
    private TipOffService tipOffService;

    @RequestMapping(value="/confirmTipOff/{id}",method = RequestMethod.GET)
    @ResponseBody
    public String confirmTipOff(@PathVariable("id") Integer id){
        TipOff tipOff = tipOffService.selectTipOffById (id);
        tipOff.setQualify (1);
        Integer i = tipOffService.updateTipOffByObj (tipOff);
        if(i == 1){
            return "success";
        }
        return "failure";
    }

    @RequestMapping(value="/forbidTipOff/{id}",method = RequestMethod.GET)
    @ResponseBody
    public String forbidTipOff(@PathVariable("id") Integer id){
        if(tipOffService.deleteTipOffById (id)){
            return "success";
        }
        return "failure";
    }

    @RequestMapping(value="/addTipOff",method = RequestMethod.POST)
    @ResponseBody
    public String addTipOff(TipOff tipOff){
        Integer i = tipOffService.insertTipOffByObj (tipOff);
        if(i == 1){
            return "success";
        }
        return "failure";
    }


    @RequestMapping(value="/displayNonConfirmedTipOffs",method = RequestMethod.GET)
    @ResponseBody
    public PageInfo displayNonConfirmedTipOffs(){
        List<TipOff> tipOffs = tipOffService.selectAllTipOff ();
        Iterator<TipOff> iterator = tipOffs.iterator ();

        while(iterator.hasNext ()){
            int qualify = iterator.next ().getQualify ();
            if(qualify == 1){
                iterator.remove ();
            }
        }

        PageInfo<TipOff> pageInfo = new PageInfo<> ();
        pageInfo.setRecordsTotal(tipOffs.size());
        pageInfo.setRecordsFiltered(tipOffs.size());
        pageInfo.setData(tipOffs);
        pageInfo.setDraw(1);
        return pageInfo;
    }

    @RequestMapping(value="/displayConfirmedTipOffs",method = RequestMethod.GET)
    @ResponseBody
    public PageInfo displayConfirmedTipOffs(){
        List<TipOff> tipOffs = tipOffService.selectAllTipOff ();
        Iterator<TipOff> iterator = tipOffs.iterator ();

        while(iterator.hasNext ()){
            int qualify = iterator.next ().getQualify ();
            if(qualify == 0){
                iterator.remove ();
            }
        }

        PageInfo<TipOff> pageInfo = new PageInfo<> ();
        pageInfo.setRecordsTotal(tipOffs.size());
        pageInfo.setRecordsFiltered(tipOffs.size());
        pageInfo.setData(tipOffs);
        pageInfo.setDraw(1);
        return pageInfo;
    }
}
