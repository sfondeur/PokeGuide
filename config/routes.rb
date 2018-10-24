Rails.application.routes.draw do
  resources :pokemons, only: [:index, :show], id: /\d+/

  resources :search, only: [:index] do
    collection do
      get 'results'
    end
  end

  root to: 'pokemons#index'

  get 'gallery', to: 'gallery#index'
  
  get 'about', to: 'about#index'

  # INDEX
  # get 'pokemons', to: 'pokemons#index'
  # SHOW
  # get 'pokemons/:id', to: 'pokemons#show', id: /\d+/

end
