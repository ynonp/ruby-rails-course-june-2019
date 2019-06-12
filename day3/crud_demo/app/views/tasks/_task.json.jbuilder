json.extract! task, :id, :owner, :description, :priority, :completed, :created_at, :updated_at
json.url task_url(task, format: :json)
