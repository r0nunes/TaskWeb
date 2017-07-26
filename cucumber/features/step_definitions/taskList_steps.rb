HomePage = Home_Page.new
PageTaskManager = Task_Manager.new

Given(/^I access the Task Manager site$/) do
    HomePage.load
    HomePage.wait_until_menu_Task_Manager_visible
    HomePage.wait_until_menu_Pantry_Manager_visible
end


When(/^click in Task Manager$/) do
    HomePage.menu_Task_Manager.click
end

And(/^I fill in the field$/) do
    PageTaskManager.fill_in_newTask.set "Aprendendo Capybara"
end

And(/^click in Add Task$/) do
    PageTaskManager.add_new_task.click
end

Then(/^my task will be successfully actived$/) do
    expect(PageTaskManager.validate_description_task).to have_content("Aprendendo Capybara")
end

And(/^I click in complete task$/) do
    PageTaskManager.button_complete_task.click
end

Then(/^verify status task$/) do
    expect(PageTaskManager).to have_button_finish_task
end 

And(/^I click in active task$/) do 
    PageTaskManager.button_finish_task.click
end 

And(/^I click in delete task$/) do 
    PageTaskManager.button_delete_task.click
end 

Then(/^my task will be successfully deleted$/) do 
    sleep(2)
    expect(PageTaskManager.validate_description_task).to have_no_content("Aprendendo Capybara")
    #PageTaskManager.validate_description_task.has_no_field?("Aprendendo Capybara")
end 
