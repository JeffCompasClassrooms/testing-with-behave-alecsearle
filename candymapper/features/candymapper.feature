Feature: CandyMapper Website Testing
  As a software tester
  I want to test the CandyMapper automation sandbox
  So that I can practice my automation skills

  Scenario: Homepage loads successfully
    Given I open the url "https://candymapper.com"
    Then I expect that element "body" does exist

  Scenario: Website tagline is visible
    Given I open the url "https://candymapper.com"
    Then I expect that element "body" contains the text "CandyMapper"

  Scenario: Halloween theme text is present
    Given I open the url "https://candymapper.com"
    Then I expect that element "body" contains the text "Software testing must be done"

  Scenario: Bug bash tagline exists
    Given I open the url "https://candymapper.com"
    Then I expect that element "body" contains the text "LET'S BASH SOME BUGS"

  Scenario: Fun rhyme is visible
    Given I open the url "https://candymapper.com"
    Then I expect that element "body" contains the text "For two hours, let's have some fun"

  Scenario: Page heading exists
    Given I open the url "https://candymapper.com"
    Then I expect that element "h1" does exist

  Scenario: Logo image is present
    Given I open the url "https://candymapper.com"
    Then I expect that element "img" does exist

  Scenario: Navigation links exist
    Given I open the url "https://candymapper.com"
    Then I expect that element "a" does exist

  Scenario: Multiple paragraphs exist
    Given I open the url "https://candymapper.com"
    Then I expect that element "p" does exist

  Scenario: Check pages under rugs text
    Given I open the url "https://candymapper.com"
    Then I expect that element "body" contains the text "Check pages"

  Scenario: Website title contains text
    Given I open the url "https://candymapper.com"
    Then I expect that element "body" contains the text "The Website That Goes Wrong"

  Scenario: Div elements exist
    Given I open the url "https://candymapper.com"
    Then I expect that element "div" does exist