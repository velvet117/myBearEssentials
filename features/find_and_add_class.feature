Feature: Quickly find and add a particular class to the planner

  As a motivated student
  So that I can add classes I have already taken or know I want to take
  I want to be able to add a class quickly by typing its course number

Background: The database has the relevant classes

  Given I am logged in as a "Student"
  And the following courses are in the database: CS 169, CS 170, CS 186
  And I am on the "My Planner" page

Scenario: I quickly add a class that exists in the database to My Planner

  When I type "CS 170" into the "Find Course" field
  And I select "Fall 2012" for the "Semester" field
  And I click "Add Course"
  
  Then I should see "CS 170" on "My Planner"

Scenario: I try to add a non-existant class to My Planner

  When I type "CS 168" into the "Find Course" field
  And I select "Fall 2012" for the "Semester" field
  And I click "Add Course"
  
  Then I should not see "CS 168" on "My Planner"
  And I should see "Error: This class doesn't exist in our databse"
