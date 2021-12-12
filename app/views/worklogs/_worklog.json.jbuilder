json.extract! worklog, :id, :minutes_worked, :description, :created_at, :updated_at
json.url worklog_url(worklog, format: :json)
