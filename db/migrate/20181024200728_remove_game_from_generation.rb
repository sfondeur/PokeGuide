class RemoveGameFromGeneration < ActiveRecord::Migration[5.2]
  def change
    remove_column :generations, :game, :string
  end
end
