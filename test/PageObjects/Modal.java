package PageObjects;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

public class Modal {

    WebDriver driver;
    
    By modalLogin = By.cssSelector("#userModalBtn");
    By acceptConditionsBtn = By.xpath("//*[@id=\"survey\"]/div/div/div[3]/button");

    public Modal(WebDriver driver) {
        this.driver = driver;
    }

    public void modalSubmitTermsConditions() throws InterruptedException {
        driver.switchTo().activeElement();
        Thread.sleep(1000);
        driver.findElement(acceptConditionsBtn).click();
    }

    public void modalLoginUser() throws InterruptedException {
        driver.switchTo().activeElement();
        Thread.sleep(1000);
        driver.findElement(modalLogin).click();
    }
}
