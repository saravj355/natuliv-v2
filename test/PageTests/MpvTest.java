package PageTests;

import PageObjects.Login;
import PageObjects.Modal;
import PageObjects.NavbarMenu;
import PageObjects.Register;
import PageObjects.Survey;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

/**
 *
 * @author sarav
 */
public class MpvTest {

    private WebDriver driver;
    NavbarMenu navbarMenu;

    public MpvTest() {
    }

    @BeforeClass
    public static void setUpClass() {
    }

    @AfterClass
    public static void tearDownClass() {
    }

    @Before
    public void setUp() {
        System.setProperty("webdriver.chrome.driver", "D:\\SARA\\Desktop\\chromedriver\\chromedriver.exe");
        driver = new ChromeDriver();
        driver.manage().window().maximize();
        driver.get("http://localhost:8080/Natuliv");
    }

    @After
    public void tearDown() {
    }

    @Test
    public void loginTest() throws InterruptedException {

        NavbarMenu navbarMenu = new NavbarMenu(driver);

        navbarMenu.dropdownAction();
        Thread.sleep(1000);

        navbarMenu.loginBtnDropdown();
        Thread.sleep(1000);

        Modal modal = new Modal(driver);
        modal.modalLoginUser();
        Thread.sleep(1000);

        Login login = new Login(driver);
        login.loginApplication("lina22@gmail.com", "lina22");
        Thread.sleep(1000);
    }

    @Test
    public void surveyTest() throws InterruptedException {

        NavbarMenu navbarMenu = new NavbarMenu(driver);

        navbarMenu.dropdownAction();
        Thread.sleep(1000);
        
        navbarMenu.registerBtnDropdown();
        Thread.sleep(1000);

        Register register = new Register(driver);
        register.registerApplication("Lina", "Restrepo", "lina22@gmail.com", "lina22", "lina22");
        Thread.sleep(1000);

        Modal modal = new Modal(driver);
        modal.modalSubmitTermsConditions();
        Thread.sleep(1000);

        Survey survey = new Survey(driver);
        survey.surveyApplication();
        Thread.sleep(1000);
    }
}
