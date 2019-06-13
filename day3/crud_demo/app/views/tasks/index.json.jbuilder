json.array! @tasks, partial: "tasks/task", as: :task do
  json.my 'val'
end
