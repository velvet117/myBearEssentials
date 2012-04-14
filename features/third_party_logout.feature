Feature: Logout from BearEssentials

  As a motivated student
  So that I can plan my academic time at Berkeley
  I want to be able to logout of BearEssentials

Background: I am on logged in on my planner page

  Given I am logged in with Facebook
  And I am on the "My Planner" page

Scenario: Successfully logout from BearEssentials

  When I logout of BearEssentials
  Then I should be on the home page
  And I should see "Signed out."

