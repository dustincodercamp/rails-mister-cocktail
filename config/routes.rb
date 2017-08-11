Rails.application.routes.draw do
  resources :cocktails, only: [ :show, :index, :new, :create, :destroy ] do
    resources :doses, only: :create
  end
  resources :ingredients, only: :show
  resources :doses, only: :destroy
  root "cocktails#index"
end
