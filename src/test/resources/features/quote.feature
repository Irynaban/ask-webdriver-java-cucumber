#Exersize for Quote application
# Test Automation Exercise - Cucumber for ACA-658
# Author: Iryna Bannikovahttps://github.com/Irynaban/ask-webdriver-java-cucumber.git

@quote
Feature: Quote Page Scenarios

  Background:
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"

  @quote1
  Scenario: Validate responsive UI behavior
      # resize to desktop size
    When I resize window to 1020 and 1080
    Then element with xpath "//b[@id='location']" should be displayed
    And element with xpath "//b[@id='currentDate']" should be displayed
    And element with xpath "//b[@id='currentTime']" should be displayed
    And I wait for 2 sec
       # resize to laptop size
    When I resize window to 800 and 1080
    Then element with xpath "//b[@id='location']" should be displayed
    And element with xpath "//b[@id='currentDate']" should be displayed
    And element with xpath "//b[@id='currentTime']" should be displayed
    And I wait for 2 sec
       # resize to mobile size
    When I resize window to 393 and 1080
    But element with xpath "//b[@id='location']" should not be displayed
    And element with xpath "//b[@id='currentDate']" should not be displayed
    And element with xpath "//b[@id='currentTime']" should not be displayed
    And I wait for 2 sec

  @quote2
  Scenario: Validate minimal "Username" field length requirement as 2 characters
        #only one character
    When I type "x" into element with xpath "//input[@name='username']"
    Then I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='username-error']" should be displayed
    Then element with xpath "//label[@id='username-error']" should have text as "Please enter at least 2 characters."
    And I wait for 2 sec
        #two characters
    Then I clear element with xpath "//input[@name='username']"
    When  I type "xq" into element with xpath "//input[@name='username']"
    Then I click on element with xpath "//button[@id='formSubmit']"
    And I wait for 2 sec
    Then element with xpath "//label[@id='username-error']" should not be displayed
        #empty field
    When I clear element with xpath "//input[@name='username']"
    Then I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='username-error']" should be displayed
    Then element with xpath "//label[@id='username-error']" should have text as "This field is required."
    And I wait for 3 sec

  @quote3
  Scenario: Validate ”Email” field accepts only valid email addresses.
            #valid email
    When I type "iryna@gmail.com" into element with xpath "//input[@name='email']"
    Then I click on element with xpath "//button[@id='formSubmit']"
    And I wait for 2 sec
    Then element with xpath "//label[@id='email-error']" should not be present
           #invalid email
    When I clear element with xpath "//input[@name='email']"
    When I type "iryna" into element with xpath "//input[@name='email']"
    Then I click on element with xpath "//button[@id='formSubmit']"
    And I wait for 2 sec
    Then element with xpath "//label[@id='email-error']" should be displayed
    And element with xpath "//label[@id='email-error']" should contain text "Please enter a valid email address."
            #empty email
    When I clear element with xpath "//input[@name='email']"
    Then I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='email-error']" should be displayed
    And element with xpath "//label[@id='email-error']" should contain text "This field is required."
    And I wait for 2 sec

  @quote4
  Scenario:  Fill out and validate “Password” set of fields. Validate that Confirm Password is disabled if Password field is empty.
   #only two character
    When I type "12" into element with xpath "//input[@id='password']"
    Then I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='password-error']" should be displayed
    And element with xpath "//label[@id='password-error']" should contain text "Please enter at least 5 characters."
    And I wait for 2 sec
  #five characters
    When I clear element with xpath "//input[@id='password']"
    Then I type "12345" into element with xpath "//input[@id='password']"
    Then I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='password-error']" should not be displayed
    And I wait for 2 sec
  #empty field
    When I clear element with xpath "//input[@id='password']"
    Then I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='password-error']" should be displayed
    And element with xpath "//label[@id='password-error']" should contain text "This field is required."
    And I wait for 2 sec
  #confirm Password is disabled if Password field is empty.
    And element with xpath "//input[@id='confirmPassword']" should be disabled
    And I wait for 2 sec

  @quote5
  Scenario: Validate “Name” field behavior Modal dialog.
    When I click on element with xpath "//input[@id='name']"
    Then element with xpath "//div[@role='dialog']" should be displayed
    Then I type "Iryna" into element with xpath "//input[@id='firstName']"
    Then I type "Olegovna" into element with xpath "//input[@name='middleName']"
    Then I type "Bannikova" into element with xpath "//input[@id='lastName']"
    And I click on element with xpath "//span[contains(text(),'Save')]"
    #verifying that after putting fName, mName, lName concatenates it correctly
    Then element with xpath "//input[@id='name']" should have attribute "value" as "Iryna Olegovna Bannikova"
    And I wait for 2 sec

  @quote6
  Scenario: Validate that Accepting Privacy Policy is required to submit the form
    #uncheck "I have read and accept Privacy Policy."
    When I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[contains(text(),' - Must check! ')]" should be displayed
    And I wait for 2 sec
    #check "I have read and accept Privacy Policy."
    Then I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
    Then I click on element with xpath "//button[@id='formSubmit'] "
    But element with xpath "//label[contains(text(),' - Must check! ')]" should not be present
    And I wait for 2 sec

  @quote7
  Scenario: Entering non-required fields in the order:
  #Phone Number
    When I type "5092903503" into element with xpath "//input[@name='phone']"
  #Country of Origin
    Then I click on element with xpath "//select[@name='countryOfOrigin']"
    Then I click on element with xpath "//option[@value='Ukraine'] "
  #Gender
    Then I click on element with xpath "//input[@value='female']"
  #Allowed to Contact?
    Then I click on element with xpath "//input[@name='allowedToContact']"
  #Address
    Then I type "1234 E 11th Ave, Spokane Valley" into element with xpath "//textarea[@id='address']"
  #Car Make
    Then I click on element with xpath "//select[@name='carMake']/option[@value='Toyota']"
  #3rd party agreement acceptance
    Then I click on element with xpath "//button[@id='thirdPartyButton']"
    And I accept alert
  #DOB
    Then I click on element with xpath "//input[@name='dateOfBirth']"
    Then element with xpath "//div[@id='ui-datepicker-div']" should be present
    Then I click on element with xpath "//select[@class='ui-datepicker-month']/option[@value='11']"
    Then I click on element with xpath "//select[@class='ui-datepicker-year']/option[@value='1982']"
    And I click on element with xpath "//td[@data-handler='selectDay']/a[text()='15']"
    And I wait for 2 sec

  @quote8
  Scenario: Submit the form. Validate that after form submission entered fields values are present on the page. Validate that password is not displayed on the page
    When I click on element with xpath "//input[@id='name']"
    Then element with xpath "//div[@role='dialog']" should be displayed
    Then I type "Iryna" into element with xpath "//input[@id='firstName']"
    Then I type "Olegovna" into element with xpath "//input[@name='middleName']"
    Then I type "Bannikova" into element with xpath "//input[@id='lastName']"
    Then I click on element with xpath "//span[contains(text(),'Save')]"
    Then element with xpath "//input[@id='name']" should have attribute "value" as "Iryna Olegovna Bannikova"
    Then I type "IrynaB" into element with xpath "//input[@name='username']"
    Then I type "iryna@gmail.com" into element with xpath "//input[@name='email']"
    Then I type "12345" into element with xpath "//input[@name='password']"
    Then I type "12345" into element with xpath "//input[@id='confirmPassword']"
    Then I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
    Then I click on element with xpath "//select[@name='countryOfOrigin']"
    Then I click on element with xpath "//option[@value='Ukraine'] "
    Then I type "1234 E 11th Ave, Spokane Valley " into element with xpath "//textarea[@id='address']"
    Then I type "5092903503" into element with xpath "//input[@name='phone']"
    Then I click on element with xpath "//input[@value='female']"
    Then I click on element with xpath "//select[@name='carMake']/option[@value='Toyota']"
    Then I click on element with xpath "//input[@name='dateOfBirth']"
    Then element with xpath "//div[@id='ui-datepicker-div']" should be present
    Then I click on element with xpath "//select[@class='ui-datepicker-month']/option[@value='11']"
    Then I click on element with xpath "//select[@class='ui-datepicker-year']/option[@value='1982']"
    Then I click on element with xpath "//td[@data-handler='selectDay']/a[text()='15']"
    Then I click on element with xpath "//input[@name='allowedToContact']"
    Then I click on element with xpath "//button[@id='thirdPartyButton']"
    And I accept alert
    Then I click on element with xpath "//button[@id='formSubmit'] "
    And I wait for 3 sec
    Then element with xpath "//legend[contains(text(),'Submitted Application')]" should be displayed
    And element with xpath "//b[@name='firstName']" should contain text "Iryna"
    And element with xpath "//b[@name='middleName']" should have text as "Olegovna"
    And element with xpath "//b[@name='email']" should contain text "iryna@gmail.com"
    And element with xpath "//b[@name='lastName']" should contain text "Bannikova"
    And element with xpath "//b[@name='password']" should contain text "[entered]"
    And element with xpath "//b[@name='name']" should contain text "Iryna Olegovna Bannikova"
    And element with xpath "//b[@name='agreedToPrivacyPolicy']" should contain text "true"
    And element with xpath "//b[@name='username']" should contain text "IrynaB"
    And element with xpath "//b[@name='address'] " should contain text "1234 E 11th Ave, Spokane Valley"
    And element with xpath "//b[@name='dateOfBirth'] " should contain text "12/15/1982"
    And element with xpath "//b[@name='gender'] " should contain text "female"
    And element with xpath "//b[@name='allowedToContact'] " should contain text "true"
    And element with xpath "//b[@name='carMake'] " should contain text "Toyota"
    And element with xpath "//b[contains(text(),'accepted')]" should be present
    And element with xpath "//b[contains(text(),'Ukraine')]" should be present
    And element with xpath "//b[@name='phone']" should contain text "5092903503"
    And I wait for 3 sec
    When I click on element with xpath "//button[@id='return']"
    And I switch to first window
    And I wait for 3 sec



      
    





