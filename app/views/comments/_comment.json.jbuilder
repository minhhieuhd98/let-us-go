json.extract! comment, :id, :user_id, :event_id, :content, :image, :created_at, :updated_at
json.url comment_url(comment, format: :json)
