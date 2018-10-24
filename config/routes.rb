Rails.application.routes.draw do
  resources :pokemons, only: [:index, :show], id: /\d+/

  root to: 'pokemons#index'

  get 'gallery', to: 'gallery#index'
  
  get 'about', to: 'about#index'

  # INDEX
  # get 'pokemons', to: 'pokemons#index'
  # SHOW
  # get 'pokemons/:id', to: 'pokemons#show', id: /\d+/

end
