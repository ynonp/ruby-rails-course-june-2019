require "application_system_test_case"

class TasksTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit tasks_url
    assert_selector "h1", text: "Tasks"
  end

  test "filter tasks" do
    visit tasks_url
    click_on "Completed Tasks"
    assert_selector('td', text: tasks(:completed_task).description)

    click_on "Active Tasks"
    assert_selector('td', text: tasks(:unfinished_task).description)

    click_on "All Tasks"
    assert_selector('.task-line', count: 2)
  end

  test "show comments in tasks" do
    visit task_url(id: tasks(:unfinished_task).id)
    assert_selector('li b', text: 'system', count: 2)
    assert_selector('li', text: 'comment one')
    assert_selector('li', text: 'comment two')
  end
end