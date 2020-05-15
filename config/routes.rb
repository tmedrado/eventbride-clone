Rails.application.routes.draw do

  namespace :admin do
    get '', to: 'dashboard#index', as: '/'
    resources :manage_users
    get '/manage_events', to: 'manage_events#index'

  end
  get 'users/show'
  get 'static_pages/secret'
  devise_for :users

  resources :users, only: [:show, :new, :create, :edit, :update, :destroy]
  resources :participations, only: [:show, :new, :create]
  resources :charges

  resources :events
  root 'events#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html



end
