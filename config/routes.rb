Rails.application.routes.draw do
  resources :floors , only: [:index, :show]
  resources :contracts
  resources :rooms
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'users#index'
end
