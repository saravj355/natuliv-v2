package PageObjects;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.Select;

public class Register {

    WebDriver driver;

    By name = By.name("name");
    By lastName = By.name("lastName");
    By email = By.name("email");
    By password = By.name("password");
    By confirmPassword = By.name("confirmPassword");
    By signUp = By.name("btnSignup");

    public Register(WebDriver driver) {
        this.driver = driver;
    }

    public void setName(String nameInput) {
        driver.findElement(name).sendKeys(nameInput);
    }

    public void setLastName(String lastNameInput) {
        driver.findElement(lastName).sendKeys(lastNameInput);
    }

    public void setEmail(String emailInput) {
        driver.findElement(email).sendKeys(emailInput);
    }

    public void setGender() {
        Select gender = new Select(driver.findElement(By.name("gender")));
        gender.selectByVisibleText("Femenino");
        gender.selectByIndex(1);
    }

    public void setPassword(String passwordInput) {
        driver.findElement(password).sendKeys(passwordInput);
    }

    public void setConfirmPassword(String confirmPasswordInput) {
        driver.findElement(confirmPassword).sendKeys(confirmPasswordInput);
    }

    public void submitRegister() {
        driver.findElement(signUp).click();
    }

    public void registerApplication(String name, String lastName, String email, String password, String confirmPassword) {
        this.setName(name);
        this.setLastName(lastName);
        this.setEmail(email);
        this.setGender();
        this.setPassword(password);
        this.setConfirmPassword(confirmPassword);
        this.submitRegister();
    }

}
