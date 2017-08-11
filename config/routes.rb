Rails.application.routes.draw do
  resources :cocktails, only: [:show, :index, :new, :create]
  resources :doses, only: [:create, :destroy]
  resources :ingredients, only: [:show]

 root "cocktails#index"
end
