Feature: View all the possible courses for a relevant focus
 
  As a motivated student
  So that I can quickly browse my courses relevant to my interests
  I want to see all courses related to a provided academic focus

Background: We are at the search page and the database has the relevant classes

  Given I am logged in as a "Student"
  And the following courses are in the database: Introduction to Data Sciences, Introduction to Databases
  And I am on the "Search For Classes" page

Scenario: List all of the courses relating to relevant focus

  When I enter "Database" in the "Search Terms" field
  And I click Search
  Then I should see the following courses: Introduction to Data Sciences, Introduction to Databases
  

