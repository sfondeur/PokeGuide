class AddGenerationNumToPokemon < ActiveRecord::Migration[5.2]
  def change
    add_column :pokemons, :generation_num, :string
  end
end
