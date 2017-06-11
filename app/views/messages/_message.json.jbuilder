json.extract! message, :id, :mensagem, :user_id, :complaint_id, :created_at, :updated_at
json.url message_url(message, format: :json)
