class Pokemon < ApplicationRecord
    belongs_to :generation, optional: true

    validates :name, :pokedex_number, :image, :generation_num, :type_one, :height, :weight, 
               presence: true
end
