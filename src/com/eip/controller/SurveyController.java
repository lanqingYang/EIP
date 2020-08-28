package com.eip.controller;

import com.eip.pojo.Survey;
import com.eip.service.SurveyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Iterator;
import java.util.List;

@Controller
public class SurveyController {
    @Autowired
    private SurveyService surveyService;

    @RequestMapping(value="/addSurvey",method = RequestMethod.POST)
    @ResponseBody
    public String addTipOff(Survey survey){
        Integer i = surveyService.insertSurveyByObj (survey);
        if(i == 1){
            return "success";
        }
        return "failure";
    }

    @RequestMapping(value="/toWithSurvey/{page}",method = RequestMethod.GET)
    public String toWithSurvey(@PathVariable("page") String page, HttpServletRequest request){
        List<Survey> surveys = surveyService.selectAllSurvey ();
        Integer total = surveys.size ();
        Integer Q1 = 0;
        Integer Q2 = 0;
        Integer Q3 = 0;
        Integer Q4 = 0;
        Integer Q5 = 0;
        Integer Q6 = 0;
        Integer Q7 = 0;

        Iterator<Survey> iterator = surveys.iterator ();
        while(iterator.hasNext ()){
            Survey survey = iterator.next ();
            if(survey.getQ1 ()==1){
                Q1++;
            }

            if(survey.getQ2 ()==1){
                Q2++;
            }

            if(survey.getQ3 ()==1){
                Q3++;
            }
            if(survey.getQ4 ()==1){
                Q4++;
            }

            if(survey.getQ5 ()==1){
                Q5++;
            }

            if(survey.getQ6 ()==1){
                Q6++;
            }

            if(survey.getQ7 ()==1){
                Q7++;
            }

        }
        request.setAttribute ("total",total);
        request.setAttribute ("Q1",Q1);
        request.setAttribute ("Q2",Q2);
        request.setAttribute ("Q3",Q3);
        request.setAttribute ("Q4",Q4);
        request.setAttribute ("Q5",Q5);
        request.setAttribute ("Q6",Q6);
        request.setAttribute ("Q7",Q7);

        return page;
    }
}
