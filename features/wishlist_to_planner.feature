Feature: Update my academic planner by adding a new class from my course wishlist to my planner

  As a motivated student
  So that I can plan the classes I want to take at Berkeley
  I want to be able to add a class to my current planner

Background: My course wishlist has the class I want to add to my planner

  Given I am logged in as a "Student"
  And I am on the "My Planner" page
  And the following classes have been added to "Course Wishlist": CS 170

Scenario: I successfully add a class to from my Wishlist to My Planner

  When I click on "CS 170" on my "Course Wishlist"
  Then I should see the option to "Add Course"

  When I select the "Fall 2012" semester for "CS 170"
  And I click "Add Course"
  Then I should see "CS 170" on "My Planner"
  And I should not see "CS 170" on my "Course Wishlist"