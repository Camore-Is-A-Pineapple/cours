package test.functional;

import java.util.concurrent.TimeUnit;

import org.junit.Test;
import org.junit.After;
import org.junit.Before;

import static org.junit.Assert.*;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.*;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.openqa.selenium.By;

public class FunctionalTest {

	private WebDriver driver;

    @Before
    public void setUp() throws Exception {
        System.setProperty("webdriver.chrome.driver","/Library/Java/JUNIT/chromedriver");
		driver = new ChromeDriver();
		driver.manage().window().maximize();
  		driver.manage().timeouts().implicitlyWait(20, TimeUnit.SECONDS);
     }

    // Test de la Story #1-homepage (https://trello.com/c/WKTneu9o/1-homepage)
	@Test
   public void testHomepage() throws Exception {
       driver.get("https://www.meetup.com/fr-FR/");
       assertEquals(driver.getTitle(), "Partagez vos passions | Meetup");
       assertEquals(driver.findElement(By.name("description")).getAttribute("content"), "Partagez vos passions et faites bouger votre ville ! Meetup vous aide à rencontrer des personnes près de chez vous, autour de vos centres d'intérêt.");
       assertEquals(driver.findElement(By.cssSelector("h1.text--display1")).getText(), "Vous avez une passion ?");
       assertEquals(driver.findElement(By.cssSelector("p.text--big.text--heavy")).getText(), "Lancez-vous avec Meetup");

       assertThat(driver.findElement(By.cssSelector("h1.text--display1")).getLocation().getY(), lessThan(driver.findElement(By.cssSelector("a.button.button--primary.text--big.j-modal--register")).getLocation().getY()));
       assertEquals(driver.findElement(By.cssSelector("a.button.button--primary")).getCssValue("background"), "rgb(237, 28, 64) none repeat scroll 0% 0% / auto padding-box border-box");
       assertEquals(driver.findElement(By.cssSelector("a.button.button--primary")).getText(), "Inscription");
       assertEquals(driver.findElement(By.cssSelector("a.button.button--primary")).getAttribute("href"), "https://secure.meetup.com/fr-FR/register/");
        
        
        
        
        
        // TODO
		// To Be Completed By Coders From Coding Factory
    }

    // Test de la Story n ...
    // TODO
    // To Be Completed By Coders From Coding Factory

    @After
    public void tearDown() throws Exception {
        driver.quit();
    }

}