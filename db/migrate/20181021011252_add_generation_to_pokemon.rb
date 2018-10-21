class AddGenerationToPokemon < ActiveRecord::Migration[5.2]
  def change
    add_column :pokemons, :generation, :string
  end
end
