class CreateComplaints < ActiveRecord::Migration[5.1]
  def change
    create_table :complaints do |t|
      t.string :nome
      t.text :detalhe
      t.float :valor_inicial_estimado
      t.date :data_reclamacao
      t.date :data_inicio_obra
      t.date :data_fim_obra
      t.string :numero_contrato
      t.string :geolocalizacao
      t.boolean :anonimo
      t.string :status
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
