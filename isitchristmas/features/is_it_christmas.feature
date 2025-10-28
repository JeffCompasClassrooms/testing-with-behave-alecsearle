Feature: Find out if it's Christmas or not
  As a person of celebration
  I want to know if it's Christmas
  So that I don't forget to celebrate.

  Scenario: It's not Christmas today
    Given I open the url "https://isitchristmas.com"
    Then I expect that element "a" contains the text "NO"
