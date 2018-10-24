class AddGamesToGeneration < ActiveRecord::Migration[5.2]
  def change
    add_column :generations, :games, :text
  end
end
