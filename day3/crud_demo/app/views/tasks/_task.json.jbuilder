json.extract! task, :id, :description, :priority, :completed, :created_at, :updated_at
json.url task_url(task, format: :json)
