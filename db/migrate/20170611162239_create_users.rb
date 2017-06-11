class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :nome
      t.string :cpf
      t.string :sexo
      t.date :data_nascimento
      t.string :telefone
      t.string :email
      t.belongs_to :user_type, foreign_key: true

      t.timestamps
    end
  end
end
