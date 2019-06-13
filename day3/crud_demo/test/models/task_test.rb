require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  test "completed scope" do
    assert_equal(1, Task.completed.count)
    assert_equal(tasks(:completed_task).id, Task.completed.first.id)
  end

  test "tasks with username has correct task id" do
    assert_equal(tasks(:completed_task).id, Task.with_username[0].id)
    assert_equal(tasks(:unfinished_task).id, Task.with_username[1].id)
  end
end
