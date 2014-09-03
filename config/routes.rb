require "monban/constraints/signed_in"
require "monban/constraints/signed_out"

Rails.application.routes.draw do
  constraints Monban::Constraints::SignedIn.new do
    root "restaurants#index"
  end

constraints Monban::Constraints::SignedOut.new do
    root "homes#show", as: :landing
  end

  resource :session, only: [:new, :create, :destroy]
  resource :search, only: [:show]
  resources :users, only: [:new, :create, :show]
  
  resources :restaurants, only: [:new, :create, :show, :index] do 
    resources :comments, only: [:new, :show, :create, :index]
  end
end
