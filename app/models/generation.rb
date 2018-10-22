class Generation < ApplicationRecord
    has_many :games, dependent: :destroy
    has_many :pokemons, dependent: :destroy
end
