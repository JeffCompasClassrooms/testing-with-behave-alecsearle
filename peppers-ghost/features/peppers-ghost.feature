Feature: Peppers Ghost DIY Project with custom steps
  As a Halloween enthusiast
  I want to ensure the Peppers Ghost tutorial website functions correctly
  So that visitors can easily follow the instructions and enjoy the project

  Scenario: Verify homepage loads successfully
    Given I open the instructables peppers ghost page
    Then I should see the page title mentioning "Pepper's Ghost"
    And I expect that there is at least one picture there

  Scenario: Check for step-by-step section
    Given I am on the Peppers Ghost tutorial page
    Then I should see sections labeled "Step" or "Instructions"

  Scenario: Verify images appear in multiple steps
    Given I am on the Peppers Ghost tutorial page
    Then I should see multiple images in the tutorial

  Scenario: Ensure video content is embedded
    Given I am on the Peppers Ghost tutorial page
    Then I should see an embedded video or iframe present

  Scenario: Confirm materials list exists
    Given I am on the Peppers Ghost tutorial page
    Then I should see a section mentioning "materials" or "supplies"

  Scenario: Check for user comment section
    Given I am on the Peppers Ghost tutorial page
    Then I should see a comment area or discussion section

  Scenario: Validate share buttons exist
    Given I am on the Peppers Ghost tutorial page
    Then I should see buttons or links to share the project on social media

  Scenario: Verify author information is visible
    Given I am on the Peppers Ghost tutorial page
    Then I should see the author’s username or profile link

  Scenario: Navigate to the Halloween category
    Given I am on the Instructables homepage
    When I search for "Halloween"
    Then I should see a list of Halloween-related projects

  Scenario: Verify related projects are displayed
    Given I am on the Peppers Ghost tutorial page
    Then I should see related or recommended projects displayed

  Scenario: Check search function for DIY ghosts
    Given I am on the Instructables homepage
    When I search for "ghost"
    Then I should see multiple results related to ghost projects

  Scenario: Validate login page loads
    Given I navigate to the Instructables login page
    Then I should see input fields for username and password

  Scenario: Verify newsletter or join button is available
    Given I am on the Instructables homepage
    Then I should see a button or link to "Join" or "Sign Up"

  Scenario: Check for copyright and footer info
    Given I am on the Peppers Ghost tutorial page
    Then I should see footer text mentioning "Instructables" or "Autodesk"

  Scenario: Ensure images load properly
    Given I am on the Peppers Ghost tutorial page
    Then all images on the page should have valid sources
