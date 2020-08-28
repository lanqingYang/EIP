package com.eip.service;

import com.eip.dao.SurveyMapper;
import com.eip.pojo.Survey;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SurveyService {
    @Autowired
    private SurveyMapper surveyMapper;

    public List<Survey> selectAllSurvey(){
        return surveyMapper.selectAllSurvey ();
    }

    public Integer insertSurveyByObj(Survey survey){
        return surveyMapper.insertSurveyByObj (survey);
    }
}
