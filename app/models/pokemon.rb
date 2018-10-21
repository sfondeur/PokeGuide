class Pokemon < ApplicationRecord
    belongs_to :game
    belongs_to :generation
end
