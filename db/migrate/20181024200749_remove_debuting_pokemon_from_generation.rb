class RemoveDebutingPokemonFromGeneration < ActiveRecord::Migration[5.2]
  def change
    remove_column :generations, :debuting_pokemon, :string
  end
end
