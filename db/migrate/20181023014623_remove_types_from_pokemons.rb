class RemoveTypesFromPokemons < ActiveRecord::Migration[5.2]
  def change
    remove_column :pokemons, :types, :string
  end
end
