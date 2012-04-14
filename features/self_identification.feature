Feature: The first time I login, I should identify whether I am a student or advisor, and what kind of EECS student I am

  As a student or advisor
  So that I can use the Bear Essentials Planner app efficiently
  I want to tell Bear Essentials what kind of user I am

Background:

  Given I am logged in as a "Student"
  And I am on the "Self Identification" page
  
Scenario: If I am a student I should be able to provide my relevant details

  When I fill in the fields as such: 
  | Last Name | First Name | User Type | Student Type | Start Semester |
  | Bitdiddle | Ben        | Student   | EECS         | Fall 2008      |
  
  And I click "Next"
  Then I should be on the "My Planner" page
  And I should see "You are successfully registered"
  And I should be an "EECS Student"

  And I should see "Fall 2008" on "My Planner"
  But I should not see "Spring 2008" on "My Planner"

Scenario: If I am an advisor I should end up on the advisors page

  When I fill in the fields as such: 
  | Last Name | First Name | User Type |
  | Hightower | Barbara    | Advisor   |

  And I click "Next"
  Then I should be on the "Advisor Welcome" page
  And I should see "You are successfully registered"
  And I should be an "Advisor"
