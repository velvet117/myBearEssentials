Feature: Display the remaining degree requirements that need to be fulfilled
 
  As a sincere student
  So that I can plan my remaining classes based on my completed courses
  I want to see my remaining requirements to graduation

Background: Make sure I am in the correct view to view my degree requirements

  Given I am logged in as a "Student"
  And I am on the "My Planner" page
  And I click the "Requirements View" button

Scenario: Indicate that my degree is already completed with the classes I have already taken
  
  When "My Planner" contains classes I have already taken that pass all degree requirements
  Then I should see "Degree requirements already satisfied"
  And I should not see any uncompleted requirements in red

Scenario: Indicate that my degree will be completed with current Academic Planner

  When "My Planner" contains classes that pass all degree requirements
  Then I should see "Degree requirements will be satisfied with current Academic Plan"
  And I should not see any uncompleted requirements
  But I should see conditionally completed requirements in yellow

Scenario: Indicate that my degree is not completed with current Academic Planner

  When "My Planner" doesn't contain classes that pass all degree requirements
  Then I should see "Degree requirements will NOT be satisfied with current Acadmic Planner"
  And I should see uncompleted requirements in red