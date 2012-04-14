Feature: Add classes to My Course Wishlist
 
  As a motivated student
  So that I can store all my desired courses before planning them out
  I want to add courses I search for to My Course Wishlist

Background: 

  Given I am logged in as a "Student"
  And I am on the "Search For Classes" page
  And the following courses are in the database: Introduction to Data Sciences, Introduction to Databases
  And I have gotten successful search results for "Database"

Scenario: List all of the courses relating to relevant focus

  When I check "All Checkboxes" in the Search Results
  And I click "Add To Course Wishlist"
  Then I should see the following courses in my "Course Wishlist": Introduction to Data Sciences, Introduction to Databases
  And "All Checkboxes" should be unchecked

