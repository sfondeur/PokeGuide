class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :pokedex_number
      t.string :string
      t.string :image

      t.timestamps
    end
  end
end
