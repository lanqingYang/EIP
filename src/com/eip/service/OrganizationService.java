package com.eip.service;

import com.eip.dao.*;
import com.eip.pojo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrganizationService {
    @Autowired
    private KindergartenMapper kindergartenMapper;
    @Autowired
    private PrimarySchoolMapper primarySchoolMapper;
    @Autowired
    private MiddleSchoolMapper middleSchoolMapper;
    @Autowired
    private HighschoolMapper highschoolMapper;
    @Autowired
    private CollegeMapper collegeMapper;


    //kindergarten
    public Integer addKindergartenByObj(Kindergarten kindergarten){
        return kindergartenMapper.insertKindergartenByObj (kindergarten);
    }

    public boolean deleteKindergartenById(Integer Id){
        return kindergartenMapper.deleteKindergartenById (Id);
    }

    public Integer updateKindergartenByObj(Kindergarten kindergarten){
        return kindergartenMapper.updateKindergartenByObj (kindergarten);
    }

    public List<Kindergarten> searchAllKindergarten(){
        return kindergartenMapper.selectKindergartens ();
    }

    public Kindergarten searchKindergartenById(Integer Id){
        return kindergartenMapper.selectKindergartenById (Id);
    }

    public List<Kindergarten> searchAllKindergartenByName(String name){
        return kindergartenMapper.selectKindergartensByName (name);
    }
    //primarySchool
    public Integer addPrimarySchoolByObj(PrimarySchool primarySchool){
        return primarySchoolMapper.insertPrimarySchoolByObj (primarySchool);
    }

    public boolean deletePrimarySchoolById(Integer Id){
        return primarySchoolMapper.deletePrimarySchoolById (Id);
    }

    public Integer updatePrimarySchoolByObj(PrimarySchool primarySchool){
        return primarySchoolMapper.updatePrimarySchoolByObj (primarySchool);
    }

    public List<PrimarySchool> searchAllPrimarySchool(){
        return primarySchoolMapper.selectPrimarySchools ();
    }

    public PrimarySchool searchPrimarySchoolById(Integer Id){
        return primarySchoolMapper.selectPrimarySchoolById (Id);
    }

    public List<PrimarySchool> searchAllPrimarySchoolByName(String name){
        return primarySchoolMapper.selectPrimarySchoolsByName (name);
    }
    //middleSchool
    public Integer addMiddleSchoolByObj(MiddleSchool middleSchool){
        return middleSchoolMapper.insertMiddleSchoolByObj (middleSchool);
    }

    public boolean deleteMiddleSchoolById(Integer Id){
        return middleSchoolMapper.deleteMiddleSchoolById (Id);
    }

    public Integer updateMiddleSchoolByObj(MiddleSchool middleSchool){
        return middleSchoolMapper.updateMiddleSchoolByObj (middleSchool);
    }

    public List<MiddleSchool> searchAllMiddleSchool(){
        return middleSchoolMapper.selectMiddleSchools ();
    }

    public MiddleSchool searchMiddleSchoolById(Integer Id){
        return middleSchoolMapper.selectMiddleSchoolById (Id);
    }

    public List<MiddleSchool> searchAllMiddleSchoolByName(String name){
        return middleSchoolMapper.selectMiddleSchoolsByName (name);
    }
    //Highschool
    public Integer addHighschoolByObj(Highschool highschool){
        return highschoolMapper.insertHighschoolByObj (highschool);
    }

    public boolean deleteHighschoolById(Integer Id){
        return highschoolMapper.deleteHighschoolById (Id);
    }

    public Integer updateHighschoolByObj(Highschool highschool){
        return highschoolMapper.updateHighschoolByObj (highschool);
    }

    public List<Highschool> searchAllHighschool(){
        return highschoolMapper.selectHighschools ();
    }

    public Highschool searchHighschoolById(Integer Id){
        return highschoolMapper.selectHighschoolById (Id);
    }

    public List<Highschool> searchAllHighschoolByName(String name){
        return highschoolMapper.selectHighschoolsByName (name);
    }
    //College
    public Integer addCollegeByObj(College college){
        return collegeMapper.insertCollegeByObj (college);
    }

    public boolean deleteCollegeById(Integer Id){
        return collegeMapper.deleteCollegeById (Id);
    }

    public Integer updateCollegeByObj(College college){
        return collegeMapper.updateCollegeByObj (college);
    }

    public List<College> searchAllCollege(){
        return collegeMapper.selectColleges ();
    }

    public College searchCollegeById(Integer Id){
        return collegeMapper.selectCollegeById (Id);
    }

    public List<College> searchAllCollegeByName(String name){
        return collegeMapper.selectCollegesByName (name);
    }
}
