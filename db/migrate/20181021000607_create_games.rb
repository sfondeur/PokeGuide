class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.string :gen_name
      t.string :region_name
      t.string :pokemon_entries

      t.timestamps
    end
  end
end
