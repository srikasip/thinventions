json.array!(@projects) do |project|
  json.extract! project, :name, :user_id, :desc
  json.url project_url(project, format: :json)
end