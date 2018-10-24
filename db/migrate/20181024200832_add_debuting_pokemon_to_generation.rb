class AddDebutingPokemonToGeneration < ActiveRecord::Migration[5.2]
  def change
    add_column :generations, :debuting_pokemon, :text
  end
end
