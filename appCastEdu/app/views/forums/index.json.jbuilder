json.array!(@forums) do |forum|
  json.extract! forum, :id, :tittle, :description
  json.url forum_url(forum, format: :json)
end
