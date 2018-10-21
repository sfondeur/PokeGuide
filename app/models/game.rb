class Game < ApplicationRecord
    has_many :pokemons
    belongs_to :generation
end
