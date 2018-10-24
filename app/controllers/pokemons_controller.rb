class PokemonsController < ApplicationController
  def index
    # load up all of the pokemon and make instance variables for all the stuff i need to access on the html
    @pokemons = Pokemon.limit(151)
  end

  def show
    @show_pokemon = Pokemon.find(params[:id])

    high_res_image_url = "https://pokeres.bastionbot.org/images/pokemon/"
    second_url = @show_pokemon.id
    third_url = ".png"
    @full_url = high_res_image_url + second_url.to_s + third_url
  end
end
