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
    }

    @Test
    public void testInsert() {
        System.out.println("insert");
        Survey survey = new Survey();

        survey.setUserId(7);
        survey.setAnswer1("36- 50");
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
        assertEquals(expResult, result);
    }

}
