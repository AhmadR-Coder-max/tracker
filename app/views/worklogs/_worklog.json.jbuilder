json.extract! worklog, :id, :mins_worked, :description, :created_at, :updated_at
json.url worklog_url(worklog, format: :json)
