class Generation < ApplicationRecord
    serialize :debuting_pokemon
    has_many :games, dependent: :destroy
    has_many :pokemons, dependent: :destroy
end
