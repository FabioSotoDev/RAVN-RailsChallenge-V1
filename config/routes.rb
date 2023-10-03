Rails.application.routes.draw do
  devise_for :users

  root 'pokemons#index'

  devise_scope :user do
    get '/sign-in' => 'devise/sessions#new', :as => :login
  end

  resources :users
  resources :pokemons
end
