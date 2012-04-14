Feature: Login using Facebook or Twitter (not the first time)

  As a motivated student
  So that I can plan my academic time at Berkeley
  I want to be able to login using Facebook

Background: I am on the login page

  Given I am on the home page

Scenario: Successfully login with Facebook

  When I follow "Login with Facebook"
  Then I should be on the "My Planner" page
  And I should see "Successfully authorized from your Facebook account"

@omniauth_test_failure
Scenario: Fail to login with Facebook

  When I follow "Login with Facebook"
  Then I should be on the home page
  And I should see "Sorry, but you didn't allow access to our app!"
