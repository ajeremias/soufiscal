json.extract! user, :id, :nome, :cpf, :sexo, :data_nascimento, :telefone, :email, :user_type_id, :created_at, :updated_at
json.url user_url(user, format: :json)
