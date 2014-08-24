Rails.application.routes.draw do

  root "homes#show"

  resource :session, only: [:new, :create, :destroy]
  resource :search, only: [:show]
  resources :comments, only: [:new, :show, :create]
  resources :users, only: [:new, :create]
  resources :restaurants, only: [:new, :create, :show, :index] 
end
