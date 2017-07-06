Given(/^I access the Task Manager site$/) do
    visit "http://nameless-brushlands-59783.herokuapp.com/"  
end

When(/^click in Task Manager$/) do
    link = page.find(:css, 'a[href="taskmanager.html"]').click
end

And(/^I fill in the field$/) do
    fill_in "task-inpt", with: "Aprendendo Capybara"
end

And(/^click in Add Task$/) do
    click_on "add-btn"
end

Then(/^my task will be successfully actived$/) do
  page.has_content?("Aprendendo Capybara")
  page.find(:xpath,"//div[1]/ul/p/button[2]")
end

And(/^I click in complete task$/) do
    page.find(:xpath,"//div[1]/ul/p/button[2]").click
end

Then(/^verify status task$/) do
    page.find(:xpath,"//div/ul/p/button[1]")
end 

And(/^I click in active task$/) do 
    page.find(:xpath,"//div/ul/p/button[1]").click
end 

And(/^I click in delete task$/) do 
    click_on "task_del_row_"
end 

And(/^my task will be successfully deleted$/) do 
    assert has_no_field?('Aprendendo Capybara')
end 



