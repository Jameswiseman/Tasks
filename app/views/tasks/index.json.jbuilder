json.array!(@tasks) do |task|
  json.extract! task, :id, :user_id, :task_name, :task_description, :task_completion_date, :task_completion_time, :status, :clients_id
  json.url task_url(task, format: :json)
end
