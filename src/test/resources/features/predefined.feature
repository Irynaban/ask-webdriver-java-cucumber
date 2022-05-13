# Automate search engines for ACA-648
# Author: Iryna Bannikova

@predefined
Feature: Smoke steps

  @predefined1
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then element with xpath "//*[@id='res']" should contain text "Cucumber"

  @predefined2
  Scenario: Predefined steps for GIBIRU
    Given I open url "https://gibiru.com/"
    Then I should see page title as "Gibiru – Protecting your privacy since 2009"
    Then I should see page title contains "Gibiru"
    Then element with xpath "//input[@id='q']" should be present
    When I type "nhl playoff" into element with xpath "//input[@id='q']"
    Then I click on element with xpath "//button[@id='button-addon2']"
    Then I wait for element with xpath "//*[contains(text(),'The official home of ')]" to be present
    And I wait for 2 sec

  @predefined3
  Scenario: Predefined steps for DuckDuckGo
    Given I open url "https://duckduckgo.com/"
    Then I should see page title as "DuckDuckGo — Privacy, simplified."
    Then I should see page title contains "DuckDuckGo"
    Then element with xpath "//a[@id='logo_homepage_link']" should be present
    When I type "weather" into element with xpath "//input[@id='search_form_input_homepage']"
    Then I click on element with xpath "//input[@id='search_button_homepage']"
    Then I wait for element with xpath "//div[@id='links_wrapper']" to be present
    And  I wait for 2 sec

  @predefined4
  Scenario: Predefined steps for Swisscows
    Given I open url "https://swisscows.com"
    Then I should see page title as "Swisscows the alternative, data secure search engine."
    Then I should see page title contains "Swisscows"
    Then element with xpath "//div[@class='logo--home-wrap']" should be present
    When I type "montana" into element with xpath "//input[@placeholder='Your search. Your business.']"
    Then I click on element with xpath "//button[@class='search-submit']"
    Then I wait for element with xpath "//*[@title='Hotels Montana - Booking.com Official Site']" to be present
    And  I wait for 2 sec

  @predefined5
  Scenario: Predefined steps for Searchencrypt
    Given I open url "https://www.searchencrypt.com"
    Then I should see page title as "Search Encrypt | Home"
    Then I should see page title contains "Search Encrypt"
    Then element with xpath "//div[@class='logo']" should be present
    When I type "QA job" into element with xpath "//input[@placeholder='Search...']"
    Then I click on element with xpath "//button[@type='submit'] "
    Then I wait for element with xpath "//div[@id='app']" to be present
    And  I wait for 2 sec

  @predefined6
  Scenario: Predefined steps for Startpage
    Given I open url "https://www.startpage.com/"
    Then I should see page title as "Startpage - Private Search Engine. No Tracking. No Search History."
    Then I should see page title contains "Startpage"
    Then element with xpath "//div[@class='home__section-one__search-logo']" should be present
    When I type "flowers" into element with xpath "//input[@id='q']"
    Then I click on element with xpath "//button[@class='search-form-home__button-desktop']"
    Then I wait for element with xpath "//div[@class='wp-qi-tp__top-square-img']" to be present
    And  I wait for 2 sec

  @predefined7
  Scenario: Predefined steps for Yandex
    Given I open url "https://www.yandex.com"
    Then I should see page title as "Yandex"
    Then I should see page title contains "Yandex"
    Then element with xpath "//div[@class='logo__image_bg']" should be present
    When I type "Ukraine flag" into element with xpath "//input[@id='text']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//span[@class='UniSearchHeader-Title-Text']" to be present
    And  I wait for 2 sec

  @predefined8
  Scenario: Predefined steps for Ecosia
    Given I open url "https://www.ecosia.org"
    Then I should see page title as "Ecosia - the search engine that plants trees"
    Then I should see page title contains "Ecosia"
    Then element with xpath "//div[@class='main-header__navigation']" should be present
    When I type "ice rink Spokane" into element with xpath "//input[@name='q']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//div[@class='result results-ads js-ad card-mobile']" to be present
    And  I wait for 2 sec

  @predefined9
  Scenario: Predefined steps for Wiki
    Given I open url "https://www.wiki.com/"
    Then I should see page title as "Wiki.com"
    Then I should see page title contains "Wiki"
    Then element with xpath "//div[@align='center']/img" should be present
    When I type "ps5" into element with xpath "//input[@name='q']"
    Then I click on element with xpath "//input[@value='Wiki Search']"
    Then I should see page title contains "Form is not secure"
    And I wait for 2 sec
    Then I click on element with xpath "//button[@id='proceed-button']"
    And I wait for 2 sec
    Then I should see page title as "Wiki.com"
    Then I switch to iframe with xpath "//iframe[@name='googleSearchFrame']"
    Then I wait for element with xpath "//*[@id='cse']" to be present
    Then element with xpath "//*[@id='cse']" should contain text "ps5"
    And I wait for 2 sec

  @predefined10
  Scenario: Predefined steps for giveWater
    Given I open url "https://www.givewater.com/"
    Then I should see page title as "Search the Web to Give Clean Water to Those in Need » giveWater Search Engine"
    Then I should see page title contains "giveWater Search Engine"
    Then element with xpath "//section[@id='main']" should be present
    Then I click on element with xpath "//button[@class='pum-close popmake-close']"
    When I type "alexa" into element with xpath "//input[@id='site-search']"
    And I wait for 2 sec
    Then I click on element with xpath "//div[@class='input-group-append']"
    Then I wait for element with xpath "//span[contains(text(),'Echo Devices - Amazon Official')]" to be present
    And  I wait for 2 sec

  @predefined11
  Scenario: Predefined steps for Ekoru
    Given I open url "https://ekoru.org/"
    Then I should see page title as "Ekoru - every search cleans our oceans"
    Then I should see page title contains "cleans our oceans"
    Then element with xpath "//div[@class='landing-image-wrapper']" should be present
    When I type "pacific ocean map" into element with xpath "//input[@id='fld_q']"
    Then I click on element with xpath "//div[@id='btn_search']"
    Then I wait for element with xpath "//div[@id='div_results']" to be present
    Then I wait for element with xpath "//*[contains(text(), 'freeworldmaps.net/ocean/pacific')]" to be present
    And  I wait for 2 sec






