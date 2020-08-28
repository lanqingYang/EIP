package com.eip.service;

import com.eip.dao.NoticeMapper;
import com.eip.pojo.Notice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NoticeService {
    @Autowired
    private NoticeMapper noticeMapper;

    public List<Notice> selectAllNotice(){
        return noticeMapper.selectAllNotice ();
    }

    public Notice selectNoticeById(Integer id){
        return noticeMapper.selectNoticeById (id);
    }

    public Integer insertNoticeByObj(Notice notice){
        return noticeMapper.insertNoticeByObj (notice);
    }

    public Integer updateNoticeByObj(Notice notice){
        return noticeMapper.updateNoticeByObj (notice);
    }

    public Boolean deleteNoticeById(Integer id){
        return noticeMapper.deleteNoticeById (id);
    }

    public List<Notice> selectNoticesByTitle(String title){
        return noticeMapper.selectNoticesByTitle (title);
    }
}
