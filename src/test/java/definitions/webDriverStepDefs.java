package definitions;

import com.sun.tools.xjc.reader.xmlschema.BindYellow;
import cucumber.api.java.en.*;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class webDriverStepDefs {
    @Given("I navigate {string}")
    public void iNavigate(String sURL) {
        switch (sURL) {
            case "google":
                getDriver().get("https://www.google.com/");
                System.out.println("https://www.google.com/");
                break;
            case "amazon":
                getDriver().get("https://www.amazon.com/");
                System.out.println("https://www.amazon.com/");
                break;
            case "ebay":
                getDriver().get("https://www.ebay.com/");
                System.out.println("https://www.ebay.com/");
                break;
            case "quote":
                getDriver().get("https://skryabin.com/market/quote.html");
                System.out.println("https://skryabin.com/market/quote.html");
                break;
            default:
                System.out.println("No URL found");
        }
    }

    @And("I print page details")
    public void iPrintPageDetails() {
        System.out.println(getDriver().getTitle());
        System.out.println(getDriver().getCurrentUrl());
        System.out.println(getDriver().getWindowHandles());
    }

    //email field verification
    @When("I type {string} into email field")
    public void iTypeIntoEmailField(String sEmail) {
        getDriver().findElement(By.xpath("//input[@name='email']")).sendKeys(sEmail);
    }

    @When("I click Submit button")
    public void iClickSubmitButton() {
        getDriver().findElement(By.xpath("//button[@id='formSubmit']")).click();

    }

    @Then("error message {string} should be displayed")
    public void errorMessageShouldBeDisplayed(String sMessage) {
        String sActualMessage = getDriver().findElement(By.xpath("//label[@id='email-error']")).getText();
        System.out.println(sActualMessage);
        assertThat(sActualMessage.equals(sMessage));
    }

    @Then("I clear email")
    public void iClearEmail() {
        getDriver().findElement(By.xpath("//input[@name='email']")).clear();

    }

    @And("click Submit button")
    public void clickSubmitButton() {
        getDriver().findElement(By.xpath("//button[@id='formSubmit']")).click();
    }

    @Then("message {string} should be displayed")
    public void messageShouldBeDisplayed(String sMessage) {
        String sActualMessage = getDriver().findElement(By.xpath("//label[@id='email-error']")).getText();
        System.out.println(sActualMessage);
        assertThat(sActualMessage.equals(sMessage));
    }

    @When("I type {string} to the email field")
    public void iTypeToTheEmailField(String sEmail) {
        getDriver().findElement(By.xpath("//input[@name='email']")).sendKeys(sEmail);
        System.out.println(sEmail);
    }

    @Then("I click on button Submit")
    public void iClickOnButtonSubmit() {
        getDriver().findElement(By.xpath("//button[@id='formSubmit']")).click();
    }

    @But("error message {string} should not be displayed")
    public void errorMessageShouldNotBeDisplayed(String sMessage) {
        getDriver().findElement(By.xpath("//label[@id='email-error']")).getText();

    }

    @When("I click on field name")
    public void iClickOnFieldName() {
        getDriver().findElement(By.xpath("//input[@id='name']")).click();
    }

    @Then("open dialog window")
    public void openDialogWindow() {
        getDriver().findElement(By.xpath("//div[@role='dialog']")).isDisplayed();
    }

    @Then("I type {string} into First name field")
    public void iTypeIntoFirstNameField(String sFname) {
        getDriver().findElement(By.xpath("//input[@id='firstName']")).sendKeys(sFname);
    }

    @Then("I type {string} into Last name field")
    public void iTypeIntoLastNameField(String sLname) {
        getDriver().findElement(By.xpath("//input[@id='lastName']")).sendKeys(sLname);
    }

    @Then("I click Save button")
    public void iClickSaveButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();
    }

    @Then("I should see name field with {string}")
    public void iShouldSeeNameFieldWith(String sName) {
        getDriver().findElement(By.xpath("//input[@id='name']")).getText();
        System.out.println(sName);
    }

    @When("I type {string} into username field")
    public void iTypeIntoUsernameField(String sUserName) {
        getDriver().findElement(By.xpath("//input[@name='username']")).sendKeys(sUserName);
    }

    @Then("I click button Submit")
    public void iClickButtonSubmit() {
        getDriver().findElement(By.xpath("//button[@id='formSubmit']")).click();
    }

    @Then("the error message {string} should be displayed")
    public void theErrorMessageShouldBeDisplayed(String sErrorMessage) {
        String sActualMessage = getDriver().findElement(By.xpath("//label[@id='username-error']")).getText();
        System.out.println(sActualMessage);
        assertThat(sActualMessage.equals(sErrorMessage));
    }

    @Then("I clear Username field and type {string}")
    public void iClearUsernameFieldAndType(String sUserName) {
        getDriver().findElement(By.xpath("//input[@name='username']")).clear();
        getDriver().findElement(By.xpath("//input[@name='username']")).sendKeys(sUserName);
    }

    @Then("I click button Submit and I don't see error message {string}")
    public void iClickButtonSubmitAndIDonTSeeErrorMessage(String sErrorMessage) {
        getDriver().findElement(By.xpath("//button[@id='formSubmit']")).click();
        getDriver().findElement(By.xpath("//label[@id='username-error']")).getText();
    }

    @When("I clear Username field and click Submit")
    public void iClearUsernameFieldAndClickSubmit() {
        getDriver().findElement(By.xpath("//input[@name='username']")).clear();
        getDriver().findElement(By.xpath("//button[@id='formSubmit']")).click();
    }

    @Then("I should see error message {string}")
    public void iShouldSeeErrorMessage(String sErrorMessage) {
        getDriver().findElement(By.xpath("//label[@id='username-error']")).isDisplayed();
    }

    @Then("I type {string} in the username field and click submit")
    public void iTypeInTheUsernameFieldAndClickSubmit(String sUserName) {
        getDriver().findElement(By.xpath("//input[@name='username']")).sendKeys(sUserName);
        getDriver().findElement(By.xpath("//button[@id='formSubmit']")).click();
        System.out.println(sUserName);
    }


    @When("I left empty password field and click on button submit I should see error message {string}")
    public void iLeftEmptyPasswordFieldAndClickOnButtonSubmitIShouldSeeErrorMessage(String sErrorMesssage) {
        getDriver().findElement(By.xpath("//button[@id='formSubmit']")).click();
        getDriver().findElement(By.xpath("//label[@id='password-error']")).getText();
    }

    @And("Confirm password should be disabled")
    public void confirmPasswordShouldBeDisabled() {
        assertThat(getDriver().findElement(By.xpath("//input[@id='confirmPassword']")).isEnabled()).isFalse();

    }

    @When("I type {string}{string}")
    public void iType(String sPassword, String sMessage) {
        getDriver().findElement(By.xpath("//input[@id='password']")).getText();
        getDriver().findElement(By.xpath("//button[@id='formSubmit']")).click();
        getDriver().findElement(By.xpath("//label[@id='password-error']")).getText();
    }

}








