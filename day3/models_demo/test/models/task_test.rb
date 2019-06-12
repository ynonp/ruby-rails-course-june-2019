require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  test "can count unfinished tasks" do
    t = Task.where(owner: 'System')
    assert(2, t.count)
  end

  test "Can finish a task" do
    t = tasks(:unfinished_system_task)

    t.completed = true
    t.save
    t.reload

    assert_equal(true, t.completed)
  end
end
