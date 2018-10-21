class CreateGenerations < ActiveRecord::Migration[5.2]
  def change
    create_table :generations do |t|
      t.string :gen_name
      t.string :region_name
      t.string :debuting_pokemon
      t.string :game

      t.timestamps
    end
  end
end
