package pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import utilities.Driver;

public class MedunnaPage {
    public MedunnaPage() {
        PageFactory.initElements(Driver.getDriver(), this);
    }

    @FindBy (xpath = "//*[@data-icon='user']") public WebElement userIconMck;
    @FindBy (xpath = "(//*[text()='Sign in'])[1]") public WebElement signInMck;
    @FindBy (xpath = "//*[@name='username']") public WebElement userNameMck;
    @FindBy (xpath = "//*[@name='password']") public WebElement passwordMck;
    @FindBy (xpath = "(//*[text()='Sign in'])[3]") public WebElement signInButtonMck;
    @FindBy (xpath = "//*[@class='d-flex align-items-center dropdown-toggle nav-link']") public WebElement userNameIconMck;
    @FindBy (xpath = "//*[text()='Password']") public WebElement passwordButtonMck;
    @FindBy (xpath = "//*[text()='Sign out']") public WebElement signOutButtonMck;
    @FindBy (xpath = "//*[@name='currentPassword']") public WebElement currentPasswordBoxMck;
    @FindBy (xpath = "//*[@name='newPassword']") public WebElement newPasswordBoxMck;
    @FindBy (xpath = "//*[@name='confirmPassword']") public WebElement confirmPasswordBoxMck;
    @FindBy (xpath = "//*[text()='Save']") public WebElement saveButtonMck;
    @FindBy (xpath = "//*[@class='text-danger form-group']") public WebElement passwordConfirmationBoxMck;
    @FindBy (xpath = "//*[text()='The password and its confirmation do not match!']") public WebElement passwordNotMatchAlertMck;
    @FindBy (xpath = "//*[@style='background-color: rgb(221, 221, 221);']") public WebElement passwordStrength5GreytMck;
    @FindBy (xpath = "(//*[@style='background-color: rgb(0, 255, 0);'])[5]") public WebElement passwordStrength5GreentMck;
    @FindBy (xpath = "(//*[@style='background-color: rgb(153, 255, 0);'])[4]") public WebElement passwordStrength4GreentMck;
    @FindBy (xpath = "//*[@style='background-color: rgb(255, 0, 0);']") public WebElement passwordStrength1RedMck;
    @FindBy (xpath = "//*[@class='alert alert-danger fade show']") public WebElement failedToSignInAlerttMck;
















    @FindBy (xpath = "//*[@data-icon='user']") public WebElement userIcon;
    @FindBy (xpath = "//*[@id='ssn']") public WebElement registrationSSN;
    @FindBy (xpath = "//*[text()='Registration']") public WebElement registrationPage;
    @FindBy (xpath = "//*[text()='Register']") public WebElement RegisterButton;
    @FindBy (xpath = "//*[text()='Your SSN is required.']") public WebElement ssnRequiredWarning;
    @FindBy (xpath = "//*[text()='Your FirstName is required.']") public WebElement firstNameRequiredWarning;
    @FindBy (xpath = "//*[text()='Your LastName is required.']") public WebElement lastNameRequiredWarning;
    @FindBy (xpath = "//*[text()='Your username is required.']") public WebElement userNameRequiredWarning;

    @FindBy (xpath = "//*[@id='firstName']") public WebElement registrationFirstName;
    @FindBy (xpath = "//*[@id='lastName']") public WebElement registrationLastName;
    @FindBy (xpath = "//*[@id='username']") public WebElement registrationUserName;
    @FindBy (xpath = "//*[@id='email']") public WebElement registrationEmail;
    @FindBy (xpath = "//*[@id='firstPassword']") public WebElement registrationFirstPassword;
    @FindBy (xpath = "//*[@id='secondPassword']") public WebElement registrationSecondPassword;
    @FindBy (xpath = "//*[@id='register-submit']") public WebElement registrationRegisterSubmit;
    @FindBy (xpath = "//div[@class='invalid-feedback']") public WebElement registrationSSNwarning;

    @FindBy (xpath = "//div[@class='Toastify__toast-body']") public WebElement registrationSavedMessage;

}
