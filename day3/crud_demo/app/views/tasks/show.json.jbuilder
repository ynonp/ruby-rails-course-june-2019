json.partial! "tasks/task", task: @task
json.comments do
  json.array! @comments, partial: 'tasks/task_comment', as: :comment
end
