/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import model.Survey;
import model.SurveyQuestion;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author sarav
 */
public class SurveyQuestionDaoTest {
    
    public SurveyQuestionDaoTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    @Test
    public void testInsert() {
        System.out.println("insert");
        SurveyQuestion surveyQuestion = new SurveyQuestion();
        
        surveyQuestion.setSurveyId(5);
        surveyQuestion.setUserId(77);
        surveyQuestion.setAnswer("12");
        
        SurveyQuestionDao instance = new SurveyQuestionDao();
        boolean expResult = true;
        boolean result = instance.insert(surveyQuestion);
        assertEquals(expResult, result);
    }
    
}
