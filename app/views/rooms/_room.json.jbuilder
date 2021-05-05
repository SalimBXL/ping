json.extract! room, :id, :sector, :name, :number, :created_at, :updated_at
json.url room_url(room, format: :json)
