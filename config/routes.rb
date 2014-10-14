Rails.application.routes.draw do

  devise_for :users
  root "parties#index"
  resources :parties
  resources :characters, only: [:index, :show, :create, :edit, :update, :destroy]

end
