json.array!(@rooms) do |room|
  json.extract! room, :id, :tittle, :descrition
  json.url room_url(room, format: :json)
end
