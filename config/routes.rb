Rails.application.routes.draw do

  root "homes#show"

  resource :session, only: [:new, :create, :destroy]
  resource :search, only: [:show]
  resources :users, only: [:new, :create]
  
  resources :restaurants, only: [:new, :create, :show, :index] do 
    resources :comments, only: [:new, :show, :create, :index]
  end
end
