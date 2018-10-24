class Generation < ApplicationRecord
    serialize :debuting_pokemon
    serialize :game
    
    has_many :games, dependent: :destroy
    has_many :pokemons, dependent: :destroy

    validates :gen_name, :region_name, :debuting_pokemon
               presence: true,
end
