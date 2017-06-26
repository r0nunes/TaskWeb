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

Then(/^my registration will be successfully made$/) do
  page.has_content?("Aprendendo Capybara")
end
    