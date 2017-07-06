Feature: Task list 

Background: 
    Given I access the Task Manager site
    When click in Task Manager

Scenario: Register a new task    
    And I fill in the field
    And click in Add Task
    Then my task will be successfully actived

Scenario: Finish task created
    And I click in complete task
    Then verify status task

Scenario: Acitve task again
    And I click in active task
    Then my task will be successfully actived

Scenario: Delete task
    And I click in delete task
    Then my task will be successfully deleted