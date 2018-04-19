Rails.application.routes.draw do

  root to: 'home#index'
  resources :users
  resources :expenses
  resources :months

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
