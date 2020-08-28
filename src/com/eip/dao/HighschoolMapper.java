package com.eip.dao;

import com.eip.pojo.Highschool;

import java.util.List;

public interface HighschoolMapper {
    /*
     * 1.获取所有组织机构信息
     * 2.根据组织机构id查询其具体信息
     * 3.根据组织机构对象（利用其中id的属性）更新组织机构信息
     * 4.根据组织机构对象增加一条组织机构信息
     * 5.根据组织机构id对该组织机构信息进行删除
     * */

    List<Highschool> selectHighschools();

    Highschool selectHighschoolById(Integer id);

    Integer updateHighschoolByObj(Highschool highschool);

    Integer insertHighschoolByObj(Highschool highschool);

    Boolean deleteHighschoolById(Integer id);

    List<Highschool> selectHighschoolsByName(String name);
}
