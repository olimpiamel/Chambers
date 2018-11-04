Rails.application.routes.draw do

  resources :users
  get 'home/index'
  root 'home#index'

  resources :properties do
    resources :comments
  end

  resources :sessions, only: [:new, :create, :destroy]

  #get 'sessions/new'

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'


end
