json.extract! state, :id, :nome, :sigla, :created_at, :updated_at
json.url state_url(state, format: :json)
