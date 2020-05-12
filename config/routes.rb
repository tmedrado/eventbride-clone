Rails.application.routes.draw do
  get 'users/show'
  get 'static_pages/secret'
  devise_for :users

  resources :users, only: [:show, :new, :create]

  resources :events
  root 'events#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
