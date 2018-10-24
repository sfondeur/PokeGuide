class AddTypeOneToPokemons < ActiveRecord::Migration[5.2]
  def change
    add_column :pokemons, :type_one, :string
  end
end
