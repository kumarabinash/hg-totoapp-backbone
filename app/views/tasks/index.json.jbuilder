json.array!(@tasks) do |task|
  json.extract! task, :id, :name, :completed, :created_at
  json.url task_url(task, format: :json)
end