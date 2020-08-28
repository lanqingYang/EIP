package com.eip.dao;

import com.eip.pojo.Notice;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

public interface NoticeMapper {
    List<Notice> selectAllNotice();

    Notice selectNoticeById(Integer id);

    Integer insertNoticeByObj(Notice notice);

    Integer updateNoticeByObj(Notice notice);

    Boolean deleteNoticeById(Integer id);

    List<Notice> selectNoticesByTitle(@Param ("title") String title);
}
