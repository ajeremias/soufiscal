class CreateCities < ActiveRecord::Migration[5.1]
  def change
    create_table :cities do |t|
      t.string :nome
      t.belongs_to :state, foreign_key: true

      t.timestamps
    end
  end
end
