package com.eip.dao;

import com.eip.pojo.Survey;

import java.util.List;

public interface SurveyMapper {
    List<Survey> selectAllSurvey();

    Integer insertSurveyByObj(Survey survey);
}
