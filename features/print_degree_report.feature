Feature: Print degree report to show student advisor

  As a dedicated student
  So that I can show my Student and Faculty advisors my degree progress
  I want to print my formal degree report

Background:

  Given I am logged in as a "Student"
  And I am on the "My Planner" page
  And the following courses are in the database: CS 169, CS 170, CS 186, CS 162
  And "My Planner" has the following Courses:
  | Course | Semester    |
  | CS 169 | Spring 2012 |
  | CS 162 | Spring 2012 |
  | CS 186 | Fall 2012   |
  | CS 170 | Fall 2012   |

Scenario: Print degree report

  When I click "Print Report"
  Then I should get a download with the filename "Degree_Report.pdf"
  And I should see "Your current degree has been downloaded"