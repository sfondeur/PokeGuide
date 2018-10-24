class SearchController < ApplicationController
    def index
    end

    def results
        @pokemons = Pokemon.where('name LIKE ?', "%#{params[:q]}%")
    end
end
