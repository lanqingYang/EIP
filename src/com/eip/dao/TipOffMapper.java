package com.eip.dao;

import com.eip.pojo.TipOff;

import java.util.List;

public interface TipOffMapper {
    List<TipOff> selectAllTipOff();

    TipOff selectTipOffById(Integer id);

    Integer insertTipOffByObj(TipOff tipOff);

    Integer updateTipOffByObj(TipOff tipOff);

    Boolean deleteTipOffById(Integer id);
}
