json.extract! complaint, :id, :nome, :detalhe, :valor_inicial_estimado, :data_reclamacao, :data_inicio_obra, :data_fim_obra, :numero_contrato, :geolocalizacao, :anonimo, :status, :user_id, :created_at, :updated_at
json.url complaint_url(complaint, format: :json)
