package LoginTestAuth;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

/**
 *
 * @author sarav
 */
public class Webpage {

    private WebDriver driver;

    public Webpage() {
    }

    @BeforeClass
    public static void setUpClass() {
    }

    @AfterClass
    public static void tearDownClass() {
    }

    @Before
    public void setUp() {
        System.setProperty("webdriver.chrome.driver", "D:\\SARA\\Desktop\\chromedriver.exe");
        driver = new ChromeDriver();
        driver.manage().window().maximize();
        driver.get("http://localhost:8080/Natuliv");
    }

    @After
    public void tearDown() {
    }

    @Test
    public void webApp() throws InterruptedException {
        /* searchs the element by the cssSelector and clicks on the element */

        // searchs dropdown element navbar
        WebElement dropdown = driver.findElement(By.cssSelector("body > header > nav > "
                + "ul.nav.justify-content-end.account > li > a"));

        dropdown.click();

        Thread.sleep(1000);

        // searchs button 'iniciar sesión' dropdown navbar
        WebElement loginDropdown = driver.findElement(By.cssSelector("body > header > nav >"
                + " ul.nav.justify-content-end.account > li > ul > a"));

        loginDropdown.click();

        Thread.sleep(1000);

        // active the element 'Usuario' from the modal
        driver.switchTo().activeElement();
        Thread.sleep(1000);

        // searchs button 'Usuario' from the modal
        WebElement userModalLogin = driver.findElement(By.xpath("/html/body/div[1]/div/div/div[2]/div[1]/a"));
        userModalLogin.click();

        Thread.sleep(1000);

        // Login instance
        Login login = new Login(driver);

        // sends as parameters the email and password
        login.loginApplication("lina123@gmail.com", "lina123");
    }
}
