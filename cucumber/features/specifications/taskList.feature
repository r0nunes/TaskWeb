Feature: Task list 

Background: 
Given I access the Task Manager site
When click in Task Manager

Scenario: Register a new task    
    And I fill in the field
    And click in Add Task
    Then my registration will be successfully made