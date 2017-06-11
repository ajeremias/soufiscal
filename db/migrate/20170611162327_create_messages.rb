class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.text :mensagem
      t.belongs_to :user, foreign_key: true
      t.belongs_to :complaint, foreign_key: true

      t.timestamps
    end
  end
end
