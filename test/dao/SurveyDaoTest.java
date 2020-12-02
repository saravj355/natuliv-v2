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
    public void testInsertAnswerSurvey() {
        System.out.println("insert");
        Survey survey = new Survey();

        survey.setUserId(12);
        survey.setAnswer1("18 - 25");
        survey.setAnswer2("Si, pero los uso muy poco");
        survey.setAnswer3("Si");
        survey.setAnswer4("3");
        survey.setAnswer5("Mixta");
        survey.setAnswer6("Normal");
        survey.setAnswer7("Si, pero no conozco mucho");
        survey.setAnswer8("Tónicos");

        SurveyDao instance = new SurveyDao();
        boolean expResult = true;
        boolean result = instance.insert(survey);
        
        System.out.println("Respuestas:");
        System.out.println("Respuesta 1: " +  survey.getAnswer1());
        System.out.println("Respuesta 2: " +  survey.getAnswer2());
        System.out.println("Respuesta 3: " +  survey.getAnswer3());
        System.out.println("Respuesta 4: " +  survey.getAnswer4());
        System.out.println("Respuesta 5: " +  survey.getAnswer5());
        System.out.println("Respuesta 6: " +  survey.getAnswer6());
        System.out.println("Respuesta 7: " +  survey.getAnswer7());
        System.out.println("Respuesta 8: " +  survey.getAnswer8());
        assertEquals(expResult, result);
    }

}
