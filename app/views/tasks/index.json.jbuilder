json.array!(@tasks) do |task|
  json.extract! task, :id, :name, :due, :completed
  json.url task_url(task, format: :json)
end
