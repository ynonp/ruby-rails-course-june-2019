require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  test "completed scope" do
    assert_equal(1, Task.completed.count)
    assert_equal(tasks(:completed_task).id, Task.completed.first.id)
  end
end
