class Game < ApplicationRecord
    has_many :pokemons
    belongs_to :generation

    validates :gen_name, :region_name,
               presence: true,
end
