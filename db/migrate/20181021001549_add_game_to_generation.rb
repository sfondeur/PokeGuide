class AddGameToGeneration < ActiveRecord::Migration[5.2]
  def change
    add_reference :generations, :game, foreign_key: true
  end
end
