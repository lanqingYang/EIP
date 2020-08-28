package com.eip.dao;

import com.eip.pojo.MiddleSchool;

import java.util.List;

public interface MiddleSchoolMapper {
    /*
     * 1.获取所有组织机构信息
     * 2.根据组织机构id查询其具体信息
     * 3.根据组织机构对象（利用其中id的属性）更新组织机构信息
     * 4.根据组织机构对象增加一条组织机构信息
     * 5.根据组织机构id对该组织机构信息进行删除
     * */

    List<MiddleSchool> selectMiddleSchools();

    MiddleSchool selectMiddleSchoolById(Integer id);

    Integer updateMiddleSchoolByObj(MiddleSchool middleSchool);

    Integer insertMiddleSchoolByObj(MiddleSchool middleSchool);

    Boolean deleteMiddleSchoolById(Integer id);

    List<MiddleSchool> selectMiddleSchoolsByName(String name);
}
