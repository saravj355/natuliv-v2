/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import model.Survey;
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
public class SurveyDaoTest {
    
    public SurveyDaoTest() {
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
    public void testUpdate() {
        System.out.println("update");
        Survey survey = null;
        SurveyDao instance = new SurveyDao();
        boolean expResult = false;
        boolean result = instance.update(survey);
        assertEquals(expResult, result);
        fail("The test case is a prototype.");
    }

    @Test
    public void testInsert() {
        System.out.println("insert");
        Survey survey = new Survey();
        
        survey.setQuestion("¿Que edad tienes?");
        
        SurveyDao instance = new SurveyDao();
        boolean expResult = true;
        boolean result = instance.insert(survey);
        assertEquals(expResult, result);
    }
    
}
