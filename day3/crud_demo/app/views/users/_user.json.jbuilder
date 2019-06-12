json.extract! user, :id, :name, :favorite_color, :created_at, :updated_at
json.url user_url(user, format: :json)
