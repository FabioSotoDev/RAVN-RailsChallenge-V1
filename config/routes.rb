Rails.application.routes.draw do
  devise_for :users

  root 'pokemons#index'

  devise_scope :user do
    get '/sign-in' => 'devise/sessions#new', :as => :login
  end

  resources :dashboard
  resources :users
  resources :pokemons
  resources :catches
end
