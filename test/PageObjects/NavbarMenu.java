package PageObjects;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

public class NavbarMenu {

    WebDriver driver;

    By dropdown = By.cssSelector("body > header > nav > ul.nav.justify-content-end.account > li > a");
    By loginBtn = By.cssSelector("body > header > nav > ul.nav.justify-content-end.account > li > ul > a");
    By registerBtn = By.cssSelector("body > header > nav > ul.nav.justify-content-end.account > li > ul > li > a");

    public NavbarMenu(WebDriver driver) {
        this.driver = driver;
    }

    public void dropdownAction() {
        driver.findElement(dropdown).click();
    }

    public void loginBtnDropdown() {
        driver.findElement(loginBtn).click();
    }
    
    public void registerBtnDropdown() {
        driver.findElement(registerBtn).click();
    }

    public void navbarActions() {
        this.dropdownAction();
    }
}
