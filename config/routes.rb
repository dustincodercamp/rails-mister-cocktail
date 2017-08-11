Rails.application.routes.draw do
  resources :cocktails, only: [ :show, :index, :new, :create ] do
    resources :doses, only: [ :create, :new ]
  end
  resources :ingredients, only: [:show]

  delete "doses/:id", to: "doses#destroy"
  root "cocktails#index"
end
