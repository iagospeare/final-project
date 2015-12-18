json.array!(@exercises) do |exercise|
  json.extract! exercise, :id, :name, :url, :description
  json.url exercise_url(exercise, format: :json)
end
