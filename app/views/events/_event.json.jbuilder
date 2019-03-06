json.extract! event, :id, :name, :description, :place, :start, :end, :created_at, :updated_at
json.url event_url(event, format: :json)
