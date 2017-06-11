class CreateNeighborhoods < ActiveRecord::Migration[5.1]
  def change
    create_table :neighborhoods do |t|
      t.string :nome
      t.belongs_to :city, foreign_key: true

      t.timestamps
    end
  end
end
