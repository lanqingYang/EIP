package com.eip.dao;

import com.eip.pojo.Kindergarten;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface KindergartenMapper {
    /*
     * 1.获取所有组织机构信息
     * 2.根据组织机构id查询其具体信息
     * 3.根据组织机构对象（利用其中id的属性）更新组织机构信息
     * 4.根据组织机构对象增加一条组织机构信息
     * 5.根据组织机构id对该组织机构信息进行删除
     * */

    List<Kindergarten> selectKindergartens();

    Kindergarten selectKindergartenById(Integer id);

    Integer updateKindergartenByObj(Kindergarten kindergarten);

    Integer insertKindergartenByObj(Kindergarten kindergarten);

    Boolean deleteKindergartenById(Integer id);

    List<Kindergarten> selectKindergartensByName(@Param ("name") String name);
}
