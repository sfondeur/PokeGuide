class RemoveStringFromPokemons < ActiveRecord::Migration[5.2]
  def change
    remove_column :pokemons, :string, :string
  end
end
