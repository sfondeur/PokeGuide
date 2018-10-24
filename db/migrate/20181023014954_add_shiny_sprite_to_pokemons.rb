class AddShinySpriteToPokemons < ActiveRecord::Migration[5.2]
  def change
    add_column :pokemons, :shiny_sprite, :string
  end
end
