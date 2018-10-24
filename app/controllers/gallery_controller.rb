class GalleryController < ApplicationController
  def index
    @pokemons = Pokemon.limit(151)
  end

  def show
  end
end
