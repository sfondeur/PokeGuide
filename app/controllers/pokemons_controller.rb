class PokemonsController < ApplicationController
  def index
    # load up all of the pokemon and make instance variables for all the stuff i need to access on the html
    @pokemons = Pokemon.limit(151)
  end

  def show
  end
end
