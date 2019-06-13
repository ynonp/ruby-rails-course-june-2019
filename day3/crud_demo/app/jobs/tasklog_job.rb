class TasklogJob < ApplicationJob
  queue_as :default

  def perform(task)
    sleep(5)
    file = File.open('tasks.txt', 'a')
    file.write("New task #{task.id} created with description #{task.description}")
    file.close
  end
end
