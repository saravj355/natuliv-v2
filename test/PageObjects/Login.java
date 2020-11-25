package PageObjects;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

public class Login {

    WebDriver driver;
    By email = By.name("email");
    By password = By.name("password");
    By signIn = By.name("btnLogin");

    public Login(WebDriver driver) {
        this.driver = driver;
    }
    
    public void setEmail(String emailInput) {
        driver.findElement(email).sendKeys(emailInput);
    }
    
    public void setPassword(String passwordInput) {
        driver.findElement(password).sendKeys(passwordInput);
    }
    
    public void submitLogin() {
        driver.findElement(signIn).click();
    }

    public void loginApplication(String email, String password) {
        this.setEmail(email);
        this.setPassword(password);
        this.submitLogin();
    }

}
