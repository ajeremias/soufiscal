class CreatePublicPlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :public_places do |t|
      t.string :nome
      t.belongs_to :neighborhood, foreign_key: true

      t.timestamps
    end
  end
end
