package com.eip.service;

import com.eip.dao.TipOffMapper;
import com.eip.pojo.TipOff;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TipOffService {
    @Autowired
    private TipOffMapper tipOffMapper;

//    List<TipOff> selectAllNotice();
    public List<TipOff> selectAllTipOff(){
        return tipOffMapper.selectAllTipOff ();
    }

//    TipOff selectNoticeById(Integer id);
    public TipOff selectTipOffById(Integer id){
        return tipOffMapper.selectTipOffById (id);
    }

//    Integer insertNoticeByObj(TipOff notice);
    public Integer insertTipOffByObj(TipOff notice){
        return tipOffMapper.insertTipOffByObj (notice);
    }

//    Integer updateNoticeByObj(TipOff notice);
    public Integer updateTipOffByObj(TipOff notice){
        return tipOffMapper.updateTipOffByObj (notice);
    }

//    Boolean deleteNoticeById(Integer id);
    public Boolean deleteTipOffById(Integer id){
        return tipOffMapper.deleteTipOffById (id);
    }
}
