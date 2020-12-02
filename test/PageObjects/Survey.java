package PageObjects;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

public class Survey {

    WebDriver driver;
    By answer1 = By.xpath("/html/body/div[2]/form/div[1]/div[1]/div/div[1]/div[1]/input");
    By answer2 = By.xpath("/html/body/div[2]/form/div[1]/div[2]/div/div[1]/div[2]/input");
    By answer3 = By.xpath("/html/body/div[2]/form/div[1]/div[3]/div/div[1]/div[1]/input");
    By answer4 = By.xpath("/html/body/div[2]/form/div[1]/div[4]/div[2]/div[3]/div/input");
    By answer5 = By.xpath("/html/body/div[2]/form/div[1]/div[5]/div/div[1]/div[2]/input");
    By answer6 = By.xpath("/html/body/div[2]/form/div[1]/div[6]/div/div[2]/div/div[2]/input");
    By answer7 = By.xpath("/html/body/div[2]/form/div[1]/div[7]/div/div[1]/div[2]/input");
    By answer8 = By.xpath("/html/body/div[2]/form/div[1]/div[8]/div/div[2]/div/div[1]/input");
    By btnSurvey = By.cssSelector("body > div.card.shadow-lg.rounded.bg-light.w-50.mx-auto > form > div.card-footer.text-center > input");

    public Survey(WebDriver driver) {
        this.driver = driver;
    }

    public void setAnswer1() {
        driver.findElement(answer1).click();
    }

    public void setAnswer2() {
        driver.findElement(answer2).click();
    }

    public void setAnswer3() {
        driver.findElement(answer3).click();
    }

    public void setAnswer4() {
        driver.findElement(answer4).click();
    }

    public void setAnswer5() {
        driver.findElement(answer5).click();
    }

    public void setAnswer6() {
        driver.findElement(answer6).click();
    }

    public void setAnswer7() {
        driver.findElement(answer7).click();
    }

    public void setAnswer8() {
        driver.findElement(answer8).click();
    }

    public void submitSurvey() {
        driver.findElement(btnSurvey).click();
    }

    public void surveyApplication() {
        this.setAnswer1();
        this.setAnswer2();
        this.setAnswer3();
        this.setAnswer4();
        this.setAnswer5();
        this.setAnswer6();
        this.setAnswer7();
        this.setAnswer8();
        this.submitSurvey();
    }

}
