class AddTypeTwoToPokemons < ActiveRecord::Migration[5.2]
  def change
    add_column :pokemons, :type_two, :string
  end
end
