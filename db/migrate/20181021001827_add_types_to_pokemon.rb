class AddTypesToPokemon < ActiveRecord::Migration[5.2]
  def change
    add_column :pokemons, :types, :string
  end
end
