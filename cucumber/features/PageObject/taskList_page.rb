class Home_Page < SitePrism::Page
    set_url "http://nameless-brushlands-59783.herokuapp.com/"

    element :title, "a.Welcome"
    element :menu_Task_Manager, 'a[href="taskmanager.html"]'
    element :menu_Pantry_Manager, 'a[href="pantrymanager.html"]'
end

class Task_Manager < SitePrism::Page
    element :fill_in_newTask, '#task-inpt'
    element :add_new_task, '#add-btn'
    
    element :validate_description_task, '#task_desc_row_'
    element :button_complete_task, :xpath, '//div[1]/ul/p/button[2]'

    element :button_finish_task, :xpath,'//div/ul/p/button[1]'
    element :button_delete_task, '#task_del_row_'  

end