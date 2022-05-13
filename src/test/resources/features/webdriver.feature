#Exersize for WebDriver experience
#Author: Iryna Bannikova

  @webdriver
  Feature: Exersize for WebDriver experience
    Background:
      Given I navigate "quote"
      Then I should see page title as "Get a Quote"
    @webdriver1
    Scenario: Open URL using site name
      Given I navigate "quote"
      And I print page details
      When I type "iryna" into email field
      When I click Submit button
      Then error message "Please enter a valid email address." should be displayed
      And I wait for 2 sec
      Then I clear email
      And click Submit button
      Then message "This field is required." should be displayed
      And I wait for 2 sec
      When I type "iryna@gmail.com" to the email field
      Then I click on button Submit
      But error message "Please enter a valid email address." should not be displayed
      And I wait for 2 sec

    @webdriver2
    Scenario: Fill out Name field
     When I click on field name
      Then open dialog window
      Then I type "Iryna" into First name field
      Then I type "Bannikova" into Last name field
      Then I click Save button
      Then I should see name field with "Iryna Bannikova"
      And I wait for 3 sec

    @webdriver3
    Scenario: Validate minimal Username field
      When I type "x" into username field
      Then I click button Submit  
      Then the error message "Please enter at least 2 characters." should be displayed
      And I wait for 2 sec
      Then I clear Username field and type "xq"
      Then I click button Submit and I don't see error message "Please enter at least 2 characters."
      When I clear Username field and click Submit
      Then I should see error message "This field is required."
      Then I type "ira" in the username field and click submit
      And I wait for 2 sec

    @webdriver3
    Scenario: Fill out and validate “Password”
      When I left empty password field and click on button submit I should see error message "This field is required."
      And Confirm password should be disabled
      And I wait for 3 sec
      When I type "12' in password field and and click submit I should see message""Please enter at least 5 characters."
      And I wait for 3 sec





