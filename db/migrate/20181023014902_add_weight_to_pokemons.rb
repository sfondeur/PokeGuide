class AddWeightToPokemons < ActiveRecord::Migration[5.2]
  def change
    add_column :pokemons, :weight, :string
  end
end
