json.array!(@personal_exercises) do |personal_exercise|
  json.extract! personal_exercise, :id, :name, :start_time
  json.url personal_exercise_url(personal_exercise, format: :json)
end
