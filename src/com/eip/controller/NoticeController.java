package com.eip.controller;

import com.eip.pojo.Notice;
import com.eip.service.NoticeService;
import com.eip.vo.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

@Controller
public class NoticeController {
    @Autowired
    private NoticeService noticeService;


    @RequestMapping(value="/searchAllNoticeByTitle/{page}",method = RequestMethod.GET)
    public String searchAllNoticeByTitle(@PathVariable("page") String page, String title, HttpServletRequest request){
        List<Notice> notices = noticeService.selectAllNotice ();
        Iterator<Notice> iterator = notices.iterator ();
        while(iterator.hasNext ()){
            Notice next = iterator.next ();
            int qualify = next.getQualify ();
            String t = next.getTitle ();
            if(qualify == 0 || !t.contains (title)){
                iterator.remove ();
            }
        }

        request.setAttribute ("ConfirmedNotices",notices);
        return page;
    }

    @RequestMapping(value="/confirmNotice/{id}",method = RequestMethod.GET)
    @ResponseBody
    public String confirmNotice(@PathVariable("id") Integer id) throws ParseException {
        Notice notice = noticeService.selectNoticeById (id);
        SimpleDateFormat sdf =new SimpleDateFormat("yyyy-MM-dd hh:mm" );
        notice.setDate (sdf.parse (sdf.format (new Date())));
        notice.setQualify (1);
        Integer i = noticeService.updateNoticeByObj (notice);
        if(i == 1){
            return "success";
        }
        return "failure";
    }

    @RequestMapping(value="/forbidNotice/{id}",method = RequestMethod.GET)
    @ResponseBody
    public String forbidNotice(@PathVariable("id") Integer id){
        if(noticeService.deleteNoticeById (id)){
            return "success";
        }
        return "failure";
    }

    @RequestMapping(value="/addNotice",method = RequestMethod.POST)
    @ResponseBody
    public String addNotice(Notice notice) throws ParseException {
        SimpleDateFormat sdf =new SimpleDateFormat("yyyy-MM-dd hh:mm" );
        notice.setDate (sdf.parse (sdf.format (new Date())));
        Integer i = noticeService.insertNoticeByObj (notice);
        if(i == 1){
            return "success";
        }
        return "failure";
    }


    @RequestMapping(value="/displayNonConfirmedNotices",method = RequestMethod.GET)
    @ResponseBody
    public PageInfo displayNonConfirmedNotices(){
        List<Notice> notices = noticeService.selectAllNotice ();
        Iterator<Notice> iterator = notices.iterator ();

        while(iterator.hasNext ()){
            int qualify = iterator.next ().getQualify ();
            if(qualify == 1){
                iterator.remove ();
            }
        }

        PageInfo<Notice> pageInfo = new PageInfo<> ();
        pageInfo.setRecordsTotal(notices.size());
        pageInfo.setRecordsFiltered(notices.size());
        pageInfo.setData(notices);
        pageInfo.setDraw(1);
        return pageInfo;
    }

    @RequestMapping(value="/displayConfirmedNotices/{page}",method = RequestMethod.GET)
    public String displayConfirmedTipOffs(HttpServletRequest request,@PathVariable("page") String page) throws ParseException {
        List<Notice> notices = noticeService.selectAllNotice ();
        Iterator<Notice> iterator = notices.iterator ();

//        SimpleDateFormat sdf =new SimpleDateFormat("yyyy-MM-dd" );
//        String time;

        while(iterator.hasNext ()){
            Notice next = iterator.next ();
            int qualify = next.getQualify ();
//            time = sdf.format (next.getDate ());
//            next.setDate (sdf.parse (time));
            if(qualify == 0){
                iterator.remove ();
            }
        }
        request.setAttribute ("ConfirmedNotices",notices);
        return page;
    }
}
