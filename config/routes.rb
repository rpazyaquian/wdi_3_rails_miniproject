Rails.application.routes.draw do

  root "parties#index"
  resources :parties
  resources :characters, only: [:index, :show, :create, :edit, :update, :destroy]

end
